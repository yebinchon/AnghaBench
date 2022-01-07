
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_group {int kref; } ;


 int kref_get (int *) ;

__attribute__((used)) static void vfio_group_get(struct vfio_group *group)
{
 kref_get(&group->kref);
}
