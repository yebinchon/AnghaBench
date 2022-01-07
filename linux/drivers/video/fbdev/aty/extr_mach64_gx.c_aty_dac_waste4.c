
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atyfb_par {int dummy; } ;


 scalar_t__ DAC_REGS ;
 int aty_ld_8 (scalar_t__,struct atyfb_par const*) ;

__attribute__((used)) static void aty_dac_waste4(const struct atyfb_par *par)
{
 (void) aty_ld_8(DAC_REGS, par);

 (void) aty_ld_8(DAC_REGS + 2, par);
 (void) aty_ld_8(DAC_REGS + 2, par);
 (void) aty_ld_8(DAC_REGS + 2, par);
 (void) aty_ld_8(DAC_REGS + 2, par);
}
