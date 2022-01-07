
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrfld_pinctrl {unsigned int nfamilies; int dev; struct mrfld_family* families; } ;
struct mrfld_family {unsigned int pin_base; unsigned int npins; } ;


 int dev_warn (int ,char*,unsigned int) ;

__attribute__((used)) static const struct mrfld_family *mrfld_get_family(struct mrfld_pinctrl *mp,
         unsigned int pin)
{
 const struct mrfld_family *family;
 unsigned int i;

 for (i = 0; i < mp->nfamilies; i++) {
  family = &mp->families[i];
  if (pin >= family->pin_base &&
      pin < family->pin_base + family->npins)
   return family;
 }

 dev_warn(mp->dev, "failed to find family for pin %u\n", pin);
 return ((void*)0);
}
