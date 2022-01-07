
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds2482_w1_chan {struct ds2482_data* pdev; } ;
struct ds2482_data {int dummy; } ;


 int DS2482_CMD_WRITE_CONFIG ;
 int DS2482_REG_CFG_APU ;
 int DS2482_REG_CFG_SPU ;
 int ds2482_calculate_config (int) ;
 int ds2482_send_cmd_data (struct ds2482_data*,int ,int ) ;
 int ds2482_wait_1wire_idle (struct ds2482_data*) ;

__attribute__((used)) static u8 ds2482_w1_set_pullup(void *data, int delay)
{
 struct ds2482_w1_chan *pchan = data;
 struct ds2482_data *pdev = pchan->pdev;
 u8 retval = 1;





 if (delay) {




  ds2482_wait_1wire_idle(pdev);

  retval = ds2482_send_cmd_data(pdev, DS2482_CMD_WRITE_CONFIG,
   ds2482_calculate_config(DS2482_REG_CFG_SPU |
      DS2482_REG_CFG_APU));
  ds2482_wait_1wire_idle(pdev);
 }

 return retval;
}
