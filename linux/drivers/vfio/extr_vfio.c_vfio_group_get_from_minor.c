
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfio_group {int dummy; } ;
struct TYPE_2__ {int group_lock; int group_idr; } ;


 struct vfio_group* idr_find (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__ vfio ;
 int vfio_group_get (struct vfio_group*) ;

__attribute__((used)) static struct vfio_group *vfio_group_get_from_minor(int minor)
{
 struct vfio_group *group;

 mutex_lock(&vfio.group_lock);
 group = idr_find(&vfio.group_idr, minor);
 if (!group) {
  mutex_unlock(&vfio.group_lock);
  return ((void*)0);
 }
 vfio_group_get(group);
 mutex_unlock(&vfio.group_lock);

 return group;
}
