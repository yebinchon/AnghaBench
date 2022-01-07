
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_pwm_chip {int ipg_clk; int regmap; } ;


 int FTM_CNTIN ;
 int FTM_OUTINIT ;
 int FTM_OUTMASK ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int fsl_pwm_init(struct fsl_pwm_chip *fpc)
{
 int ret;

 ret = clk_prepare_enable(fpc->ipg_clk);
 if (ret)
  return ret;

 regmap_write(fpc->regmap, FTM_CNTIN, 0x00);
 regmap_write(fpc->regmap, FTM_OUTINIT, 0x00);
 regmap_write(fpc->regmap, FTM_OUTMASK, 0xFF);

 clk_disable_unprepare(fpc->ipg_clk);

 return 0;
}
