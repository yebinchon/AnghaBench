
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfio_group {int dummy; } ;
struct TYPE_2__ {int group_idr; } ;


 int GFP_KERNEL ;
 scalar_t__ MINORMASK ;
 int idr_alloc (int *,struct vfio_group*,int ,scalar_t__,int ) ;
 TYPE_1__ vfio ;

__attribute__((used)) static int vfio_alloc_group_minor(struct vfio_group *group)
{
 return idr_alloc(&vfio.group_idr, group, 0, MINORMASK + 1, GFP_KERNEL);
}
