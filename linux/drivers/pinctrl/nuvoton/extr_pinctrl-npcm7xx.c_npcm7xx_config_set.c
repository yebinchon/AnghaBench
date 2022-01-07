
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct npcm7xx_pinctrl {int dummy; } ;


 int npcm7xx_config_set_one (struct npcm7xx_pinctrl*,unsigned int,int ) ;
 struct npcm7xx_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int npcm7xx_config_set(struct pinctrl_dev *pctldev, unsigned int pin,
         unsigned long *configs, unsigned int num_configs)
{
 struct npcm7xx_pinctrl *npcm = pinctrl_dev_get_drvdata(pctldev);
 int rc;

 while (num_configs--) {
  rc = npcm7xx_config_set_one(npcm, pin, *configs++);
  if (rc)
   return rc;
 }

 return 0;
}
