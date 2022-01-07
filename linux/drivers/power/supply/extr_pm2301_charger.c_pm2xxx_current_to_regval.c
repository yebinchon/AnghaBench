
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int* pm2xxx_charger_current_map ;

__attribute__((used)) static int pm2xxx_current_to_regval(int curr)
{
 int i;

 if (curr < pm2xxx_charger_current_map[0])
  return 0;

 for (i = 1; i < ARRAY_SIZE(pm2xxx_charger_current_map); i++) {
  if (curr < pm2xxx_charger_current_map[i])
   return (i - 1);
 }

 i = ARRAY_SIZE(pm2xxx_charger_current_map) - 1;
 if (curr == pm2xxx_charger_current_map[i])
  return i;
 else
  return -EINVAL;
}
