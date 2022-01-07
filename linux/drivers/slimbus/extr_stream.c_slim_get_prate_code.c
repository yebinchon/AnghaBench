
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int* slim_presence_rate_table ;

__attribute__((used)) static int slim_get_prate_code(int rate)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(slim_presence_rate_table); i++) {
  if (rate == slim_presence_rate_table[i])
   return i;
 }

 return -EINVAL;
}
