
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pmc_dev {int dummy; } ;


 int PMC_S0IX_WAKE_EN ;
 scalar_t__ PMC_WAKE_EN_SETTING ;
 int pmc_reg_write (struct pmc_dev*,int ,int ) ;

__attribute__((used)) static void pmc_hw_reg_setup(struct pmc_dev *pmc)
{
 pmc_reg_write(pmc, PMC_S0IX_WAKE_EN, (u32)PMC_WAKE_EN_SETTING);
}
