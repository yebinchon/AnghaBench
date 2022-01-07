
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmic_wrapper {int dummy; } ;


 int PWRAP_SPI2_CTRL ;
 int PWRAP_STAUPD_PRD ;
 int pwrap_writel (struct pmic_wrapper*,int,int ) ;

__attribute__((used)) static int pwrap_mt7622_init_soc_specific(struct pmic_wrapper *wrp)
{
 pwrap_writel(wrp, 0, PWRAP_STAUPD_PRD);

 pwrap_writel(wrp, 0x8000000, PWRAP_SPI2_CTRL);

 return 0;
}
