
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_pin_desc {int number; } ;
struct pinctrl_dev {int pin_desc_tree; } ;
struct pin_desc {struct pin_desc* name; scalar_t__ dynamic_name; } ;


 int kfree (struct pin_desc*) ;
 int radix_tree_delete (int *,int ) ;
 struct pin_desc* radix_tree_lookup (int *,int ) ;

__attribute__((used)) static void pinctrl_free_pindescs(struct pinctrl_dev *pctldev,
      const struct pinctrl_pin_desc *pins,
      unsigned num_pins)
{
 int i;

 for (i = 0; i < num_pins; i++) {
  struct pin_desc *pindesc;

  pindesc = radix_tree_lookup(&pctldev->pin_desc_tree,
         pins[i].number);
  if (pindesc) {
   radix_tree_delete(&pctldev->pin_desc_tree,
       pins[i].number);
   if (pindesc->dynamic_name)
    kfree(pindesc->name);
  }
  kfree(pindesc);
 }
}
