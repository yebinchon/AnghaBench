
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnic_intr {TYPE_1__* ctrl; } ;
struct TYPE_2__ {int int_credits; } ;


 unsigned int ioread32 (int *) ;

__attribute__((used)) static inline unsigned int
svnic_intr_credits(struct vnic_intr *intr)
{
 return ioread32(&intr->ctrl->int_credits);
}
