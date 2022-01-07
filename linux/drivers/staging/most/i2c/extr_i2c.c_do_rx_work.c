
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mbo {int (* complete ) (struct mbo*) ;int status; int processed_length; int virt_address; int buffer_length; int list; } ;
struct TYPE_2__ {int list; } ;
struct hdm_i2c {TYPE_1__ rx; int client; } ;


 int MAX_BUF_SIZE_CONTROL ;
 int MBO_SUCCESS ;
 int i2c_master_recv (int ,unsigned char*,int) ;
 int list_del (int *) ;
 struct mbo* list_first_mbo (int *) ;
 int memcpy (int ,unsigned char*,int ) ;
 int min (int,int ) ;
 int pr_err (char*) ;
 int stub1 (struct mbo*) ;

__attribute__((used)) static void do_rx_work(struct hdm_i2c *dev)
{
 struct mbo *mbo;
 unsigned char msg[MAX_BUF_SIZE_CONTROL];
 int ret;
 u16 pml, data_size;


 ret = i2c_master_recv(dev->client, msg, 2);
 if (ret <= 0) {
  pr_err("Failed to receive PML\n");
  return;
 }

 pml = (msg[0] << 8) | msg[1];
 if (!pml)
  return;

 data_size = pml + 2;


 ret = i2c_master_recv(dev->client, msg, data_size);
 if (ret <= 0) {
  pr_err("Failed to receive a Port Message\n");
  return;
 }

 mbo = list_first_mbo(&dev->rx.list);
 list_del(&mbo->list);

 mbo->processed_length = min(data_size, mbo->buffer_length);
 memcpy(mbo->virt_address, msg, mbo->processed_length);
 mbo->status = MBO_SUCCESS;
 mbo->complete(mbo);
}
