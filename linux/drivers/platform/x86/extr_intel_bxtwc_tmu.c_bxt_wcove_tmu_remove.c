
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcove_tmu {int regmap; } ;
struct platform_device {int dummy; } ;


 int BXTWC_MIRQLVL1 ;
 unsigned int BXTWC_MIRQLVL1_MTMU ;
 int BXTWC_MTMUIRQ_REG ;
 unsigned int BXTWC_TMU_ALRM_MASK ;
 struct wcove_tmu* platform_get_drvdata (struct platform_device*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static int bxt_wcove_tmu_remove(struct platform_device *pdev)
{
 struct wcove_tmu *wctmu = platform_get_drvdata(pdev);
 unsigned int val;


 regmap_read(wctmu->regmap, BXTWC_MIRQLVL1, &val);
 regmap_write(wctmu->regmap, BXTWC_MIRQLVL1,
   val | BXTWC_MIRQLVL1_MTMU);
 regmap_read(wctmu->regmap, BXTWC_MTMUIRQ_REG, &val);
 regmap_write(wctmu->regmap, BXTWC_MTMUIRQ_REG,
   val | BXTWC_TMU_ALRM_MASK);
 return 0;
}
