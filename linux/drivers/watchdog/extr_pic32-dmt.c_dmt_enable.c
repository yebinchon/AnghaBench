
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pic32_dmt {scalar_t__ regs; } ;


 scalar_t__ DMTCON_REG ;
 int DMT_ON ;
 int PIC32_SET (scalar_t__) ;
 int writel (int ,int ) ;

__attribute__((used)) static inline void dmt_enable(struct pic32_dmt *dmt)
{
 writel(DMT_ON, PIC32_SET(dmt->regs + DMTCON_REG));
}
