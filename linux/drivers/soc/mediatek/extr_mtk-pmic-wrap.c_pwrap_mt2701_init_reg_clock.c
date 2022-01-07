
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmic_wrapper {TYPE_1__* slave; } ;
struct TYPE_2__ {int type; int * dew_regs; } ;




 size_t PWRAP_DEW_RDDMY_NO ;
 int PWRAP_RDDMY ;
 int pwrap_init_chip_select_ext (struct pmic_wrapper*,int,int ,int,int) ;
 int pwrap_write (struct pmic_wrapper*,int ,int) ;
 int pwrap_writel (struct pmic_wrapper*,int,int ) ;

__attribute__((used)) static int pwrap_mt2701_init_reg_clock(struct pmic_wrapper *wrp)
{
 switch (wrp->slave->type) {
 case 128:
  pwrap_writel(wrp, 0xc, PWRAP_RDDMY);
  pwrap_init_chip_select_ext(wrp, 4, 0, 2, 2);
  break;

 case 129:
  pwrap_writel(wrp, 0x8, PWRAP_RDDMY);
  pwrap_write(wrp, wrp->slave->dew_regs[PWRAP_DEW_RDDMY_NO],
       0x8);
  pwrap_init_chip_select_ext(wrp, 5, 0, 2, 2);
  break;
 default:
  break;
 }

 return 0;
}
