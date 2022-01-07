
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct npcm7xx_pinctrl {int gcr_regmap; int dev; } ;
struct TYPE_2__ {int npins; int pins; int name; } ;


 int dev_dbg (int ,char*,unsigned int,unsigned int,int ) ;
 TYPE_1__* npcm7xx_groups ;
 int npcm7xx_setfunc (int ,int ,int ,unsigned int) ;
 struct npcm7xx_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int npcm7xx_pinmux_set_mux(struct pinctrl_dev *pctldev,
      unsigned int function,
      unsigned int group)
{
 struct npcm7xx_pinctrl *npcm = pinctrl_dev_get_drvdata(pctldev);

 dev_dbg(npcm->dev, "set_mux: %d, %d[%s]\n", function, group,
  npcm7xx_groups[group].name);

 npcm7xx_setfunc(npcm->gcr_regmap, npcm7xx_groups[group].pins,
   npcm7xx_groups[group].npins, group);

 return 0;
}
