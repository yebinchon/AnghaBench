
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmic_wrapper {TYPE_1__* master; } ;
struct TYPE_2__ {int type; } ;


 int PWRAP_CSHEXT ;


 int pwrap_init_chip_select_ext (struct pmic_wrapper*,int ,int,int,int) ;
 int pwrap_writel (struct pmic_wrapper*,int,int ) ;

__attribute__((used)) static int pwrap_common_init_reg_clock(struct pmic_wrapper *wrp)
{
 switch (wrp->master->type) {
 case 128:
  pwrap_init_chip_select_ext(wrp, 0, 4, 2, 2);
  break;
 case 129:
  pwrap_writel(wrp, 0x4, PWRAP_CSHEXT);
  pwrap_init_chip_select_ext(wrp, 0, 4, 0, 0);
  break;
 default:
  break;
 }

 return 0;
}
