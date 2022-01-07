
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum lp8727_die_temp { ____Placeholder_lp8727_die_temp } lp8727_die_temp ;






__attribute__((used)) static bool lp8727_is_high_temperature(enum lp8727_die_temp temp)
{
 switch (temp) {
 case 128:
 case 130:
 case 129:
  return 1;
 default:
  return 0;
 }
}
