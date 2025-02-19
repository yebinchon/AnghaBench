
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct npcm7xx_pinctrl {int * dev; int pctldev; int gcr_regmap; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,...) ;
 int dev_set_drvdata (int *,struct npcm7xx_pinctrl*) ;
 struct npcm7xx_pinctrl* devm_kzalloc (int *,int,int ) ;
 int devm_pinctrl_register (int *,int *,struct npcm7xx_pinctrl*) ;
 int npcm7xx_gpio_of (struct npcm7xx_pinctrl*) ;
 int npcm7xx_gpio_register (struct npcm7xx_pinctrl*) ;
 int npcm7xx_pinctrl_desc ;
 int pr_info (char*) ;
 int syscon_regmap_lookup_by_compatible (char*) ;

__attribute__((used)) static int npcm7xx_pinctrl_probe(struct platform_device *pdev)
{
 struct npcm7xx_pinctrl *pctrl;
 int ret;

 pctrl = devm_kzalloc(&pdev->dev, sizeof(*pctrl), GFP_KERNEL);
 if (!pctrl)
  return -ENOMEM;

 pctrl->dev = &pdev->dev;
 dev_set_drvdata(&pdev->dev, pctrl);

 pctrl->gcr_regmap =
  syscon_regmap_lookup_by_compatible("nuvoton,npcm750-gcr");
 if (IS_ERR(pctrl->gcr_regmap)) {
  dev_err(pctrl->dev, "didn't find nuvoton,npcm750-gcr\n");
  return PTR_ERR(pctrl->gcr_regmap);
 }

 ret = npcm7xx_gpio_of(pctrl);
 if (ret < 0) {
  dev_err(pctrl->dev, "Failed to gpio dt-binding %u\n", ret);
  return ret;
 }

 pctrl->pctldev = devm_pinctrl_register(&pdev->dev,
            &npcm7xx_pinctrl_desc, pctrl);
 if (IS_ERR(pctrl->pctldev)) {
  dev_err(&pdev->dev, "Failed to register pinctrl device\n");
  return PTR_ERR(pctrl->pctldev);
 }

 ret = npcm7xx_gpio_register(pctrl);
 if (ret < 0) {
  dev_err(pctrl->dev, "Failed to register gpio %u\n", ret);
  return ret;
 }

 pr_info("NPCM7xx Pinctrl driver probed\n");
 return 0;
}
