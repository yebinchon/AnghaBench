
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct abx500_pinrange {unsigned int offset; int npins; } ;
struct abx500_pinctrl_soc_data {int gpio_num_ranges; struct abx500_pinrange* gpio_ranges; } ;



__attribute__((used)) static int abx500_get_gpio_num(struct abx500_pinctrl_soc_data *soc)
{
 unsigned int lowest = 0;
 unsigned int highest = 0;
 unsigned int npins = 0;
 int i;







 for (i = 0; i < soc->gpio_num_ranges; i++) {
  unsigned gstart;
  unsigned gend;
  const struct abx500_pinrange *p;

  p = &soc->gpio_ranges[i];
  gstart = p->offset;
  gend = p->offset + p->npins - 1;

  if (i == 0) {

   lowest = gstart;
   highest = gend;
  } else {
   if (gstart < lowest)
    lowest = gstart;
   if (gend > highest)
    highest = gend;
  }
 }

 npins = highest - lowest + 1;
 return npins;
}
