
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct hp_sw_dh_data* handler_data; } ;
struct hp_sw_dh_data {scalar_t__ path_state; struct scsi_device* sdev; int retries; } ;


 int GFP_KERNEL ;
 int HP_SW_NAME ;
 scalar_t__ HP_SW_PATH_ACTIVE ;
 scalar_t__ HP_SW_PATH_UNINITIALIZED ;
 int HP_SW_RETRIES ;
 int KERN_INFO ;
 int SCSI_DH_NOMEM ;
 int SCSI_DH_NOSYS ;
 int SCSI_DH_OK ;
 int hp_sw_tur (struct scsi_device*,struct hp_sw_dh_data*) ;
 int kfree (struct hp_sw_dh_data*) ;
 struct hp_sw_dh_data* kzalloc (int,int ) ;
 int sdev_printk (int ,struct scsi_device*,char*,int ,char*) ;

__attribute__((used)) static int hp_sw_bus_attach(struct scsi_device *sdev)
{
 struct hp_sw_dh_data *h;
 int ret;

 h = kzalloc(sizeof(*h), GFP_KERNEL);
 if (!h)
  return SCSI_DH_NOMEM;
 h->path_state = HP_SW_PATH_UNINITIALIZED;
 h->retries = HP_SW_RETRIES;
 h->sdev = sdev;

 ret = hp_sw_tur(sdev, h);
 if (ret != SCSI_DH_OK)
  goto failed;
 if (h->path_state == HP_SW_PATH_UNINITIALIZED) {
  ret = SCSI_DH_NOSYS;
  goto failed;
 }

 sdev_printk(KERN_INFO, sdev, "%s: attached to %s path\n",
      HP_SW_NAME, h->path_state == HP_SW_PATH_ACTIVE?
      "active":"passive");

 sdev->handler_data = h;
 return SCSI_DH_OK;
failed:
 kfree(h);
 return ret;
}
