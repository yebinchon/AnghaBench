
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_intr {int dummy; } ;


 unsigned int svnic_intr_credits (struct vnic_intr*) ;
 int svnic_intr_return_credits (struct vnic_intr*,unsigned int,int,int) ;

__attribute__((used)) static inline void
svnic_intr_return_all_credits(struct vnic_intr *intr)
{
 unsigned int credits = svnic_intr_credits(intr);
 int unmask = 1;
 int reset_timer = 1;

 svnic_intr_return_credits(intr, credits, unmask, reset_timer);
}
