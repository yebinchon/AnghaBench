
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmd_dev {int msix_count; TYPE_1__* irqs; } ;
struct TYPE_2__ {int srcu; } ;


 int cleanup_srcu_struct (int *) ;

__attribute__((used)) static void vmd_cleanup_srcu(struct vmd_dev *vmd)
{
 int i;

 for (i = 0; i < vmd->msix_count; i++)
  cleanup_srcu_struct(&vmd->irqs[i].srcu);
}
