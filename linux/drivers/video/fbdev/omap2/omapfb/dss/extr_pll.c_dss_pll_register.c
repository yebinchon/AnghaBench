
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_pll {int dummy; } ;


 int ARRAY_SIZE (struct dss_pll**) ;
 int EBUSY ;
 struct dss_pll** dss_plls ;

int dss_pll_register(struct dss_pll *pll)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(dss_plls); ++i) {
  if (!dss_plls[i]) {
   dss_plls[i] = pll;
   return 0;
  }
 }

 return -EBUSY;
}
