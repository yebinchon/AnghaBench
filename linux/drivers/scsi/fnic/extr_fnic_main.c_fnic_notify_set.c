
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fnic {int vdev; TYPE_1__* lport; } ;
struct TYPE_2__ {int host; } ;


 int FNIC_INTX_NOTIFY ;
 int FNIC_MSIX_ERR_NOTIFY ;
 int KERN_ERR ;



 int shost_printk (int ,int ,char*,int) ;
 int vnic_dev_get_intr_mode (int ) ;
 int vnic_dev_notify_set (int ,int) ;

__attribute__((used)) static int fnic_notify_set(struct fnic *fnic)
{
 int err;

 switch (vnic_dev_get_intr_mode(fnic->vdev)) {
 case 130:
  err = vnic_dev_notify_set(fnic->vdev, FNIC_INTX_NOTIFY);
  break;
 case 129:
  err = vnic_dev_notify_set(fnic->vdev, -1);
  break;
 case 128:
  err = vnic_dev_notify_set(fnic->vdev, FNIC_MSIX_ERR_NOTIFY);
  break;
 default:
  shost_printk(KERN_ERR, fnic->lport->host,
        "Interrupt mode should be set up"
        " before devcmd notify set %d\n",
        vnic_dev_get_intr_mode(fnic->vdev));
  err = -1;
  break;
 }

 return err;
}
