
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfio_group {int kref; } ;
struct TYPE_2__ {int group_lock; } ;


 int kref_put_mutex (int *,int ,int *) ;
 TYPE_1__ vfio ;
 int vfio_group_release ;

__attribute__((used)) static void vfio_group_put(struct vfio_group *group)
{
 kref_put_mutex(&group->kref, vfio_group_release, &vfio.group_lock);
}
