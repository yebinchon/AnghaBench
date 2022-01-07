
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fotg210_udc {scalar_t__ reg; } ;


 scalar_t__ FOTG210_PHYTMSR ;
 int PHYTMSR_UNPLUG ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void fotg210_disable_unplug(struct fotg210_udc *fotg210)
{
 u32 reg = ioread32(fotg210->reg + FOTG210_PHYTMSR);

 reg &= ~PHYTMSR_UNPLUG;
 iowrite32(reg, fotg210->reg + FOTG210_PHYTMSR);
}
