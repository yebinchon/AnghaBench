
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmd_dev {TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* resource; } ;
struct TYPE_3__ {int * child; } ;


 size_t VMD_MEMBAR1 ;
 size_t VMD_MEMBAR2 ;

__attribute__((used)) static void vmd_detach_resources(struct vmd_dev *vmd)
{
 vmd->dev->resource[VMD_MEMBAR1].child = ((void*)0);
 vmd->dev->resource[VMD_MEMBAR2].child = ((void*)0);
}
