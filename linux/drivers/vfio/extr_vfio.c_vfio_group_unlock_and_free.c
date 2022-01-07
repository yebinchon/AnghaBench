
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfio_group {int nb; int iommu_group; } ;
struct TYPE_2__ {int group_lock; } ;


 int iommu_group_unregister_notifier (int ,int *) ;
 int kfree (struct vfio_group*) ;
 int mutex_unlock (int *) ;
 TYPE_1__ vfio ;

__attribute__((used)) static void vfio_group_unlock_and_free(struct vfio_group *group)
{
 mutex_unlock(&vfio.group_lock);




 iommu_group_unregister_notifier(group->iommu_group, &group->nb);
 kfree(group);
}
