
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds2482_w1_chan {int channel; struct ds2482_data* pdev; } ;
struct ds2482_data {int w1_count; int access_lock; } ;


 int DS2482_CMD_1WIRE_WRITE_BYTE ;
 int ds2482_send_cmd_data (struct ds2482_data*,int ,int ) ;
 int ds2482_set_channel (struct ds2482_data*,int ) ;
 int ds2482_wait_1wire_idle (struct ds2482_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ds2482_w1_write_byte(void *data, u8 byte)
{
 struct ds2482_w1_chan *pchan = data;
 struct ds2482_data *pdev = pchan->pdev;

 mutex_lock(&pdev->access_lock);


 ds2482_wait_1wire_idle(pdev);
 if (pdev->w1_count > 1)
  ds2482_set_channel(pdev, pchan->channel);


 ds2482_send_cmd_data(pdev, DS2482_CMD_1WIRE_WRITE_BYTE, byte);

 mutex_unlock(&pdev->access_lock);
}
