
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zd_chip {int dummy; } ;


 int zd_rfwrite_cr_locked (struct zd_chip*,int const) ;

int zd_rfwritev_cr_locked(struct zd_chip *chip,
                   const u32 *values, unsigned int count)
{
 int r;
 unsigned int i;

 for (i = 0; i < count; i++) {
  r = zd_rfwrite_cr_locked(chip, values[i]);
  if (r)
   return r;
 }

 return 0;
}
