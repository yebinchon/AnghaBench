
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct country_code_to_enum_rd {scalar_t__ countrycode; } ;


 int ARRAY_SIZE (struct country_code_to_enum_rd*) ;
 struct country_code_to_enum_rd* all_countries ;

__attribute__((used)) static struct country_code_to_enum_rd *_rtl_regd_find_country(u16 countrycode)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(all_countries); i++) {
  if (all_countries[i].countrycode == countrycode)
   return &all_countries[i];
 }
 return ((void*)0);
}
