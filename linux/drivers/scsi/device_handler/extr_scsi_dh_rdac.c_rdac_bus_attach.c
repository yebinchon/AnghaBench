
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {struct rdac_dh_data* handler_data; } ;
struct rdac_dh_data {TYPE_1__* ctlr; scalar_t__ lun_state; scalar_t__ mode; int lun; int state; } ;
struct TYPE_2__ {int kref; } ;


 int ARRAY_LABEL_LEN ;
 int GFP_KERNEL ;
 int KERN_NOTICE ;
 int RDAC_NAME ;
 int RDAC_STATE_ACTIVE ;
 int SCSI_DH_NOMEM ;
 int SCSI_DH_OK ;
 int UNINITIALIZED_LUN ;
 int UNIQUE_ID_LEN ;
 int check_ownership (struct scsi_device*,struct rdac_dh_data*) ;
 int get_lun_info (struct scsi_device*,struct rdac_dh_data*,char*,char*) ;
 int initialize_controller (struct scsi_device*,struct rdac_dh_data*,char*,char*) ;
 int kfree (struct rdac_dh_data*) ;
 int kref_put (int *,int ) ;
 struct rdac_dh_data* kzalloc (int,int ) ;
 int list_lock ;
 int * lun_state ;
 int * mode ;
 int release_controller ;
 int sdev_printk (int ,struct scsi_device*,char*,int ,int ,int ,int ) ;
 int set_mode_select (struct scsi_device*,struct rdac_dh_data*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int rdac_bus_attach(struct scsi_device *sdev)
{
 struct rdac_dh_data *h;
 int err;
 char array_name[ARRAY_LABEL_LEN];
 char array_id[UNIQUE_ID_LEN];

 h = kzalloc(sizeof(*h) , GFP_KERNEL);
 if (!h)
  return SCSI_DH_NOMEM;
 h->lun = UNINITIALIZED_LUN;
 h->state = RDAC_STATE_ACTIVE;

 err = get_lun_info(sdev, h, array_name, array_id);
 if (err != SCSI_DH_OK)
  goto failed;

 err = initialize_controller(sdev, h, array_name, array_id);
 if (err != SCSI_DH_OK)
  goto failed;

 err = check_ownership(sdev, h);
 if (err != SCSI_DH_OK)
  goto clean_ctlr;

 err = set_mode_select(sdev, h);
 if (err != SCSI_DH_OK)
  goto clean_ctlr;

 sdev_printk(KERN_NOTICE, sdev,
      "%s: LUN %d (%s) (%s)\n",
      RDAC_NAME, h->lun, mode[(int)h->mode],
      lun_state[(int)h->lun_state]);

 sdev->handler_data = h;
 return SCSI_DH_OK;

clean_ctlr:
 spin_lock(&list_lock);
 kref_put(&h->ctlr->kref, release_controller);
 spin_unlock(&list_lock);

failed:
 kfree(h);
 return err;
}
