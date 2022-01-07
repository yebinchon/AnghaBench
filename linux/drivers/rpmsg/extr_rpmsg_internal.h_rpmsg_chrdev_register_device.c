
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct rpmsg_device {char* driver_override; TYPE_1__ id; } ;


 int rpmsg_register_device (struct rpmsg_device*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static inline int rpmsg_chrdev_register_device(struct rpmsg_device *rpdev)
{
 strcpy(rpdev->id.name, "rpmsg_chrdev");
 rpdev->driver_override = "rpmsg_chrdev";

 return rpmsg_register_device(rpdev);
}
