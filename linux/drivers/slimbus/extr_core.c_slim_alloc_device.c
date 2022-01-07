
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slim_eaddr {int dummy; } ;
struct slim_device {int dev; struct slim_eaddr e_addr; } ;
struct slim_controller {int dummy; } ;
struct device_node {int dummy; } ;


 int GFP_KERNEL ;
 struct slim_device* kzalloc (int,int ) ;
 int put_device (int *) ;
 int slim_add_device (struct slim_controller*,struct slim_device*,struct device_node*) ;

__attribute__((used)) static struct slim_device *slim_alloc_device(struct slim_controller *ctrl,
          struct slim_eaddr *eaddr,
          struct device_node *node)
{
 struct slim_device *sbdev;
 int ret;

 sbdev = kzalloc(sizeof(*sbdev), GFP_KERNEL);
 if (!sbdev)
  return ((void*)0);

 sbdev->e_addr = *eaddr;
 ret = slim_add_device(ctrl, sbdev, node);
 if (ret) {
  put_device(&sbdev->dev);
  return ((void*)0);
 }

 return sbdev;
}
