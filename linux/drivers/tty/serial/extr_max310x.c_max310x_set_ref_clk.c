
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max310x_port {int regmap; } ;
struct device {int dummy; } ;


 unsigned long DIV_ROUND_CLOSEST (unsigned long,unsigned int) ;
 unsigned int MAX310X_CLKSRC_CRYST_BIT ;
 unsigned int MAX310X_CLKSRC_EXTCLK_BIT ;
 unsigned int MAX310X_CLKSRC_PLLBYP_BIT ;
 unsigned int MAX310X_CLKSRC_PLL_BIT ;
 int MAX310X_CLKSRC_REG ;
 int MAX310X_PLLCFG_REG ;
 unsigned int MAX310X_STS_CLKREADY_BIT ;
 int MAX310X_STS_IRQSTS_REG ;
 int dev_warn (struct device*,char*) ;
 int max310x_update_best_err (unsigned long,long*) ;
 int msleep (int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static int max310x_set_ref_clk(struct device *dev, struct max310x_port *s,
          unsigned long freq, bool xtal)
{
 unsigned int div, clksrc, pllcfg = 0;
 long besterr = -1;
 unsigned long fdiv, fmul, bestfreq = freq;


 max310x_update_best_err(freq, &besterr);


 for (div = 1; (div <= 63) && besterr; div++) {
  fdiv = DIV_ROUND_CLOSEST(freq, div);


  fmul = fdiv * 6;
  if ((fdiv >= 500000) && (fdiv <= 800000))
   if (!max310x_update_best_err(fmul, &besterr)) {
    pllcfg = (0 << 6) | div;
    bestfreq = fmul;
   }

  fmul = fdiv * 48;
  if ((fdiv >= 850000) && (fdiv <= 1200000))
   if (!max310x_update_best_err(fmul, &besterr)) {
    pllcfg = (1 << 6) | div;
    bestfreq = fmul;
   }

  fmul = fdiv * 96;
  if ((fdiv >= 425000) && (fdiv <= 1000000))
   if (!max310x_update_best_err(fmul, &besterr)) {
    pllcfg = (2 << 6) | div;
    bestfreq = fmul;
   }

  fmul = fdiv * 144;
  if ((fdiv >= 390000) && (fdiv <= 667000))
   if (!max310x_update_best_err(fmul, &besterr)) {
    pllcfg = (3 << 6) | div;
    bestfreq = fmul;
   }
 }


 clksrc = MAX310X_CLKSRC_EXTCLK_BIT | (xtal ? MAX310X_CLKSRC_CRYST_BIT : 0);


 if (pllcfg) {
  clksrc |= MAX310X_CLKSRC_PLL_BIT;
  regmap_write(s->regmap, MAX310X_PLLCFG_REG, pllcfg);
 } else
  clksrc |= MAX310X_CLKSRC_PLLBYP_BIT;

 regmap_write(s->regmap, MAX310X_CLKSRC_REG, clksrc);


 if (xtal) {
  unsigned int val;
  msleep(10);
  regmap_read(s->regmap, MAX310X_STS_IRQSTS_REG, &val);
  if (!(val & MAX310X_STS_CLKREADY_BIT)) {
   dev_warn(dev, "clock is not stable yet\n");
  }
 }

 return (int)bestfreq;
}
