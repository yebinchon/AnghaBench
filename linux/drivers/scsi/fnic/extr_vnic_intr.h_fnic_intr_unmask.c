
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnic_intr {TYPE_1__* ctrl; } ;
struct TYPE_2__ {int mask; } ;


 int iowrite32 (int ,int *) ;

__attribute__((used)) static inline void vnic_intr_unmask(struct vnic_intr *intr)
{
 iowrite32(0, &intr->ctrl->mask);
}
