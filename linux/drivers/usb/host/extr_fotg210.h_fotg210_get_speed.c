
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fotg210_hcd {TYPE_1__* regs; } ;
struct TYPE_2__ {int otgcsr; } ;


 int OTGCSR_HOST_SPD_TYP ;
 int readl (int *) ;

__attribute__((used)) static inline unsigned int
fotg210_get_speed(struct fotg210_hcd *fotg210, unsigned int portsc)
{
 return (readl(&fotg210->regs->otgcsr)
  & OTGCSR_HOST_SPD_TYP) >> 22;
}
