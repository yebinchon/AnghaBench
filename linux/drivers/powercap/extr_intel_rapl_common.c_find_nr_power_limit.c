
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rapl_domain {TYPE_1__* rpl; } ;
struct TYPE_2__ {scalar_t__ name; } ;


 int NR_POWER_LIMITS ;

__attribute__((used)) static int find_nr_power_limit(struct rapl_domain *rd)
{
 int i, nr_pl = 0;

 for (i = 0; i < NR_POWER_LIMITS; i++) {
  if (rd->rpl[i].name)
   nr_pl++;
 }

 return nr_pl;
}
