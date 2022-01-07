
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct npcm7xx_pinctrl {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int dev_dbg (int ,char*,int) ;
 int npcm7xx_groups ;
 struct npcm7xx_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int npcm7xx_get_groups_count(struct pinctrl_dev *pctldev)
{
 struct npcm7xx_pinctrl *npcm = pinctrl_dev_get_drvdata(pctldev);

 dev_dbg(npcm->dev, "group size: %d\n", ARRAY_SIZE(npcm7xx_groups));
 return ARRAY_SIZE(npcm7xx_groups);
}
