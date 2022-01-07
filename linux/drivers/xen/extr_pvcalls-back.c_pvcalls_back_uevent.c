
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int dummy; } ;
struct kobj_uevent_env {int dummy; } ;



__attribute__((used)) static int pvcalls_back_uevent(struct xenbus_device *xdev,
          struct kobj_uevent_env *env)
{
 return 0;
}
