
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pll_min_max {int min_p1; int max_p1; } ;


 int PLLS_I9xx ;
 struct pll_min_max* plls ;

__attribute__((used)) static int splitp(int index, unsigned int p, unsigned int *retp1,
    unsigned int *retp2)
{
 int p1, p2;
 struct pll_min_max *pll = &plls[index];

 if (index == PLLS_I9xx) {
  p2 = (p % 10) ? 1 : 0;

  p1 = p / (p2 ? 5 : 10);

  *retp1 = (unsigned int)p1;
  *retp2 = (unsigned int)p2;
  return 0;
 }

 if (p % 4 == 0)
  p2 = 1;
 else
  p2 = 0;
 p1 = (p / (1 << (p2 + 1))) - 2;
 if (p % 4 == 0 && p1 < pll->min_p1) {
  p2 = 0;
  p1 = (p / (1 << (p2 + 1))) - 2;
 }
 if (p1 < pll->min_p1 || p1 > pll->max_p1 ||
     (p1 + 2) * (1 << (p2 + 1)) != p) {
  return 1;
 } else {
  *retp1 = (unsigned int)p1;
  *retp2 = (unsigned int)p2;
  return 0;
 }
}
