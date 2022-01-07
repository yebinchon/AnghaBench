
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmic_wrapper {TYPE_1__* slave; } ;
struct TYPE_2__ {int type; } ;



 int PWRAP_ADC_CMD_ADDR ;
 int PWRAP_ADC_RDATA_ADDR1 ;
 int PWRAP_ADC_RDATA_ADDR2 ;
 int PWRAP_ADC_RDY_ADDR ;
 int PWRAP_PWRAP_ADC_CMD ;
 int pwrap_writel (struct pmic_wrapper*,int,int ) ;

__attribute__((used)) static int pwrap_mt2701_init_soc_specific(struct pmic_wrapper *wrp)
{

 switch (wrp->slave->type) {
 case 128:
  pwrap_writel(wrp, 0x076c, PWRAP_ADC_CMD_ADDR);
  pwrap_writel(wrp, 0x8000, PWRAP_PWRAP_ADC_CMD);
  pwrap_writel(wrp, 0x072c, PWRAP_ADC_RDY_ADDR);
  pwrap_writel(wrp, 0x072e, PWRAP_ADC_RDATA_ADDR1);
  pwrap_writel(wrp, 0x0730, PWRAP_ADC_RDATA_ADDR2);
  break;
 default:
  break;
 }

 return 0;
}
