
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_pin_desc {int number; int name; } ;


 int GFP_KERNEL ;
 int PINS ;
 int kasprintf (int ,char*,int) ;
 int* pad_count ;

__attribute__((used)) static void lantiq_load_pin_desc(struct pinctrl_pin_desc *d, int bank, int len)
{
 int base = bank * PINS;
 int i;

 for (i = 0; i < len; i++) {
  d[i].number = base + i;
  d[i].name = kasprintf(GFP_KERNEL, "io%d", base + i);
 }
 pad_count[bank] = len;
}
