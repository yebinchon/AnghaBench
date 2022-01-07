
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct vnic_intr {TYPE_1__* ctrl; } ;
struct TYPE_2__ {int int_credit_return; } ;


 int VNIC_INTR_RESET_TIMER_SHIFT ;
 int VNIC_INTR_UNMASK_SHIFT ;
 int iowrite32 (unsigned int,int *) ;

__attribute__((used)) static inline void
svnic_intr_return_credits(struct vnic_intr *intr,
     unsigned int credits,
     int unmask,
     int reset_timer)
{



 u32 int_credit_return = (credits & 0xffff) |
  (unmask ? (1 << 16) : 0) |
  (reset_timer ? (1 << 17) : 0);

 iowrite32(int_credit_return, &intr->ctrl->int_credit_return);
}
