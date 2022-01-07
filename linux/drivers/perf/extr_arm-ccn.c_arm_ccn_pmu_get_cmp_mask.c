
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {TYPE_1__* cmp_mask; } ;
struct arm_ccn {TYPE_2__ dt; } ;
struct TYPE_3__ {int h; int l; } ;


 scalar_t__ WARN_ON (int) ;
 scalar_t__ isdigit (char const) ;
 int isxdigit (char const) ;
 int tolower (char const) ;

__attribute__((used)) static u64 *arm_ccn_pmu_get_cmp_mask(struct arm_ccn *ccn, const char *name)
{
 unsigned long i;

 if (WARN_ON(!name || !name[0] || !isxdigit(name[0]) || !name[1]))
  return ((void*)0);
 i = isdigit(name[0]) ? name[0] - '0' : 0xa + tolower(name[0]) - 'a';

 switch (name[1]) {
 case 'l':
  return &ccn->dt.cmp_mask[i].l;
 case 'h':
  return &ccn->dt.cmp_mask[i].h;
 default:
  return ((void*)0);
 }
}
