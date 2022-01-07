
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {TYPE_1__* handler; } ;
struct TYPE_2__ {int module; int name; int (* detach ) (struct scsi_device*) ;} ;


 int KERN_NOTICE ;
 int module_put (int ) ;
 int sdev_printk (int ,struct scsi_device*,char*,int ) ;
 int stub1 (struct scsi_device*) ;

__attribute__((used)) static void scsi_dh_handler_detach(struct scsi_device *sdev)
{
 sdev->handler->detach(sdev);
 sdev_printk(KERN_NOTICE, sdev, "%s: Detached\n", sdev->handler->name);
 module_put(sdev->handler->module);
}
