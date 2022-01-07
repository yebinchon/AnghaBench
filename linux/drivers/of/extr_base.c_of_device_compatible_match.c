
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 unsigned int of_device_is_compatible (struct device_node*,char const* const) ;

int of_device_compatible_match(struct device_node *device,
          const char *const *compat)
{
 unsigned int tmp, score = 0;

 if (!compat)
  return 0;

 while (*compat) {
  tmp = of_device_is_compatible(device, *compat);
  if (tmp > score)
   score = tmp;
  compat++;
 }

 return score;
}
