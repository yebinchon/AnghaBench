
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ci_hdrc {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_NONE ;

__attribute__((used)) static inline irqreturn_t ci_otg_fsm_irq(struct ci_hdrc *ci)
{
 return IRQ_NONE;
}
