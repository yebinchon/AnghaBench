
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usbatm_vcc_data {int * sarb; int list; } ;
struct TYPE_4__ {int tasklet; } ;
struct usbatm_data {int serialize; TYPE_2__ rx_channel; void* cached_vci; void* cached_vpi; struct usbatm_vcc_data* cached_vcc; } ;
struct atm_vcc {int flags; void* vci; void* vpi; struct usbatm_vcc_data* dev_data; TYPE_1__* dev; } ;
struct TYPE_3__ {struct usbatm_data* dev_data; } ;


 void* ATM_VCI_UNSPEC ;
 int ATM_VF_ADDR ;
 int ATM_VF_PARTIAL ;
 int ATM_VF_READY ;
 void* ATM_VPI_UNSPEC ;
 int clear_bit (int ,int *) ;
 int kfree (struct usbatm_vcc_data*) ;
 int kfree_skb (int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tasklet_disable (int *) ;
 int tasklet_enable (int *) ;
 int usbatm_cancel_send (struct usbatm_data*,struct atm_vcc*) ;

__attribute__((used)) static void usbatm_atm_close(struct atm_vcc *vcc)
{
 struct usbatm_data *instance = vcc->dev->dev_data;
 struct usbatm_vcc_data *vcc_data = vcc->dev_data;

 if (!instance || !vcc_data)
  return;

 usbatm_cancel_send(instance, vcc);

 mutex_lock(&instance->serialize);

 tasklet_disable(&instance->rx_channel.tasklet);
 if (instance->cached_vcc == vcc_data) {
  instance->cached_vcc = ((void*)0);
  instance->cached_vpi = ATM_VPI_UNSPEC;
  instance->cached_vci = ATM_VCI_UNSPEC;
 }
 list_del(&vcc_data->list);
 tasklet_enable(&instance->rx_channel.tasklet);

 kfree_skb(vcc_data->sarb);
 vcc_data->sarb = ((void*)0);

 kfree(vcc_data);
 vcc->dev_data = ((void*)0);

 vcc->vpi = ATM_VPI_UNSPEC;
 vcc->vci = ATM_VCI_UNSPEC;
 clear_bit(ATM_VF_READY, &vcc->flags);
 clear_bit(ATM_VF_PARTIAL, &vcc->flags);
 clear_bit(ATM_VF_ADDR, &vcc->flags);

 mutex_unlock(&instance->serialize);
}
