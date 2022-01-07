
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vme_dev {struct vme_bridge* bridge; } ;
struct vme_bridge {int num; } ;


 int EINVAL ;
 int pr_err (char*) ;

int vme_bus_num(struct vme_dev *vdev)
{
 struct vme_bridge *bridge;

 bridge = vdev->bridge;
 if (!bridge) {
  pr_err("Can't find VME bus\n");
  return -EINVAL;
 }

 return bridge->num;
}
