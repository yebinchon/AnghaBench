
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct senseid {int dev_model; int dev_type; int cu_model; int cu_type; } ;
struct ccw_device {TYPE_2__* private; } ;
struct ccw_dev_id {int devno; int ssid; } ;
struct TYPE_4__ {TYPE_1__* dma_area; struct ccw_dev_id dev_id; } ;
struct TYPE_3__ {struct senseid senseid; } ;


 int CIO_MSG_EVENT (int,char*,int ,int ,int,int ,int ,int ,int ,char*) ;
 scalar_t__ MACHINE_IS_VM ;
 int ccw_device_sense_id_done (struct ccw_device*,int) ;
 scalar_t__ diag210_get_dev_info (struct ccw_device*) ;
 int snsid_init (struct ccw_device*) ;

__attribute__((used)) static void snsid_callback(struct ccw_device *cdev, void *data, int rc)
{
 struct ccw_dev_id *id = &cdev->private->dev_id;
 struct senseid *senseid = &cdev->private->dma_area->senseid;
 int vm = 0;

 if (rc && MACHINE_IS_VM) {

  snsid_init(cdev);
  if (diag210_get_dev_info(cdev) == 0) {
   rc = 0;
   vm = 1;
  }
 }
 CIO_MSG_EVENT(2, "snsid: device 0.%x.%04x: rc=%d %04x/%02x "
        "%04x/%02x%s\n", id->ssid, id->devno, rc,
        senseid->cu_type, senseid->cu_model, senseid->dev_type,
        senseid->dev_model, vm ? " (diag210)" : "");
 ccw_device_sense_id_done(cdev, rc);
}
