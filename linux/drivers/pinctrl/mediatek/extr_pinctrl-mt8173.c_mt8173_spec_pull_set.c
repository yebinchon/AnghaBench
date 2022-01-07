
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int mt8173_spec_pupd ;
 int mtk_pctrl_spec_pull_set_samereg (struct regmap*,int ,int ,unsigned int,unsigned char,int,unsigned int) ;

__attribute__((used)) static int mt8173_spec_pull_set(struct regmap *regmap, unsigned int pin,
  unsigned char align, bool isup, unsigned int r1r0)
{
 return mtk_pctrl_spec_pull_set_samereg(regmap, mt8173_spec_pupd,
  ARRAY_SIZE(mt8173_spec_pupd), pin, align, isup, r1r0);
}
