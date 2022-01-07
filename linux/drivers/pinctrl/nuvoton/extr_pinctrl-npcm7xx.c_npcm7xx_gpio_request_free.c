
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct npcm7xx_pinctrl {int domain; } ;


 int irq_dispose_mapping (int) ;
 int irq_find_mapping (int ,unsigned int) ;
 struct npcm7xx_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static void npcm7xx_gpio_request_free(struct pinctrl_dev *pctldev,
          struct pinctrl_gpio_range *range,
          unsigned int offset)
{
 struct npcm7xx_pinctrl *npcm = pinctrl_dev_get_drvdata(pctldev);
 int virq;

 virq = irq_find_mapping(npcm->domain, offset);
 if (virq)
  irq_dispose_mapping(virq);
}
