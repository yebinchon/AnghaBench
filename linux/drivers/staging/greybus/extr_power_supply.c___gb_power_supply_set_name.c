
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dummy; } ;


 int ENOMEM ;
 struct power_supply* power_supply_get_by_name (char*) ;
 int power_supply_put (struct power_supply*) ;
 int snprintf (char*,size_t,char*,char*,unsigned int) ;
 int strlcpy (char*,char*,size_t) ;
 int strlen (char*) ;

__attribute__((used)) static int __gb_power_supply_set_name(char *init_name, char *name, size_t len)
{
 unsigned int i = 0;
 int ret = 0;
 struct power_supply *psy;

 if (!strlen(init_name))
  init_name = "gb_power_supply";
 strlcpy(name, init_name, len);

 while ((ret < len) && (psy = power_supply_get_by_name(name))) {
  power_supply_put(psy);

  ret = snprintf(name, len, "%s_%u", init_name, ++i);
 }
 if (ret >= len)
  return -ENOMEM;
 return i;
}
