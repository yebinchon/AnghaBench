
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp8788_buck {int dummy; } ;
typedef enum lp8788_buck_id { ____Placeholder_lp8788_buck_id } lp8788_buck_id ;




 int lp8788_buck1_set_dvs (struct lp8788_buck*) ;
 int lp8788_buck2_set_dvs (struct lp8788_buck*) ;

__attribute__((used)) static void lp8788_set_dvs(struct lp8788_buck *buck, enum lp8788_buck_id id)
{
 switch (id) {
 case 129:
  lp8788_buck1_set_dvs(buck);
  break;
 case 128:
  lp8788_buck2_set_dvs(buck);
  break;
 default:
  break;
 }
}
