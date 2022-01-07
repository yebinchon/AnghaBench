
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct clariion_dh_data* handler_data; } ;
struct clariion_dh_data {size_t lun_state; void* default_sp; int port; void* current_sp; } ;


 size_t CLARIION_LUN_UNINITIALIZED ;
 int CLARIION_NAME ;
 void* CLARIION_UNBOUND_LU ;
 int GFP_KERNEL ;
 int KERN_INFO ;
 int SCSI_DH_NOMEM ;
 int SCSI_DH_OK ;
 int clariion_send_inquiry (struct scsi_device*,struct clariion_dh_data*) ;
 int clariion_std_inquiry (struct scsi_device*,struct clariion_dh_data*) ;
 int kfree (struct clariion_dh_data*) ;
 struct clariion_dh_data* kzalloc (int,int ) ;
 int * lun_state ;
 int sdev_printk (int ,struct scsi_device*,char*,int ,void*,int ,int ,void*) ;

__attribute__((used)) static int clariion_bus_attach(struct scsi_device *sdev)
{
 struct clariion_dh_data *h;
 int err;

 h = kzalloc(sizeof(*h) , GFP_KERNEL);
 if (!h)
  return SCSI_DH_NOMEM;
 h->lun_state = CLARIION_LUN_UNINITIALIZED;
 h->default_sp = CLARIION_UNBOUND_LU;
 h->current_sp = CLARIION_UNBOUND_LU;

 err = clariion_std_inquiry(sdev, h);
 if (err != SCSI_DH_OK)
  goto failed;

 err = clariion_send_inquiry(sdev, h);
 if (err != SCSI_DH_OK)
  goto failed;

 sdev_printk(KERN_INFO, sdev,
      "%s: connected to SP %c Port %d (%s, default SP %c)\n",
      CLARIION_NAME, h->current_sp + 'A',
      h->port, lun_state[h->lun_state],
      h->default_sp + 'A');

 sdev->handler_data = h;
 return SCSI_DH_OK;

failed:
 kfree(h);
 return err;
}
