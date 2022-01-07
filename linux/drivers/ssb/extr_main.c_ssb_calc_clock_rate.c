
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SSB_CHIPCO_CLK_BASE1 ;
 int SSB_CHIPCO_CLK_BASE2 ;
 int SSB_CHIPCO_CLK_F5_BIAS ;
 int SSB_CHIPCO_CLK_M1 ;
 int SSB_CHIPCO_CLK_M2 ;
 int SSB_CHIPCO_CLK_M2_SHIFT ;
 int SSB_CHIPCO_CLK_M3 ;
 int SSB_CHIPCO_CLK_M3_SHIFT ;
 int SSB_CHIPCO_CLK_MC ;





 int SSB_CHIPCO_CLK_MC_SHIFT ;
 int SSB_CHIPCO_CLK_N1 ;
 int SSB_CHIPCO_CLK_N2 ;
 int SSB_CHIPCO_CLK_N2_SHIFT ;
 int SSB_CHIPCO_CLK_T2M2_BIAS ;
 int SSB_CHIPCO_CLK_T2MC_M1BYP ;
 int SSB_CHIPCO_CLK_T2MC_M2BYP ;
 int SSB_CHIPCO_CLK_T2MC_M3BYP ;
 int SSB_CHIPCO_CLK_T2_BIAS ;
 int SSB_CHIPCO_CLK_T6_M0 ;
 int SSB_CHIPCO_CLK_T6_M1 ;
 int SSB_CHIPCO_CLK_T6_MMASK ;







 int WARN_ON (int) ;
 int clkfactor_f6_resolve (int) ;

u32 ssb_calc_clock_rate(u32 plltype, u32 n, u32 m)
{
 u32 n1, n2, clock, m1, m2, m3, mc;

 n1 = (n & SSB_CHIPCO_CLK_N1);
 n2 = ((n & SSB_CHIPCO_CLK_N2) >> SSB_CHIPCO_CLK_N2_SHIFT);

 switch (plltype) {
 case 129:
  if (m & SSB_CHIPCO_CLK_T6_MMASK)
   return SSB_CHIPCO_CLK_T6_M1;
  return SSB_CHIPCO_CLK_T6_M0;
 case 134:
 case 132:
 case 131:
 case 128:
  n1 = clkfactor_f6_resolve(n1);
  n2 += SSB_CHIPCO_CLK_F5_BIAS;
  break;
 case 133:
  n1 += SSB_CHIPCO_CLK_T2_BIAS;
  n2 += SSB_CHIPCO_CLK_T2_BIAS;
  WARN_ON(!((n1 >= 2) && (n1 <= 7)));
  WARN_ON(!((n2 >= 5) && (n2 <= 23)));
  break;
 case 130:
  return 100000000;
 default:
  WARN_ON(1);
 }

 switch (plltype) {
 case 132:
 case 128:
  clock = SSB_CHIPCO_CLK_BASE2 * n1 * n2;
  break;
 default:
  clock = SSB_CHIPCO_CLK_BASE1 * n1 * n2;
 }
 if (!clock)
  return 0;

 m1 = (m & SSB_CHIPCO_CLK_M1);
 m2 = ((m & SSB_CHIPCO_CLK_M2) >> SSB_CHIPCO_CLK_M2_SHIFT);
 m3 = ((m & SSB_CHIPCO_CLK_M3) >> SSB_CHIPCO_CLK_M3_SHIFT);
 mc = ((m & SSB_CHIPCO_CLK_MC) >> SSB_CHIPCO_CLK_MC_SHIFT);

 switch (plltype) {
 case 134:
 case 132:
 case 131:
 case 128:
  m1 = clkfactor_f6_resolve(m1);
  if ((plltype == 134) ||
      (plltype == 132))
   m2 += SSB_CHIPCO_CLK_F5_BIAS;
  else
   m2 = clkfactor_f6_resolve(m2);
  m3 = clkfactor_f6_resolve(m3);

  switch (mc) {
  case 139:
   return clock;
  case 138:
   return (clock / m1);
  case 137:
   return (clock / (m1 * m2));
  case 136:
   return (clock / (m1 * m2 * m3));
  case 135:
   return (clock / (m1 * m3));
  }
  return 0;
 case 133:
  m1 += SSB_CHIPCO_CLK_T2_BIAS;
  m2 += SSB_CHIPCO_CLK_T2M2_BIAS;
  m3 += SSB_CHIPCO_CLK_T2_BIAS;
  WARN_ON(!((m1 >= 2) && (m1 <= 7)));
  WARN_ON(!((m2 >= 3) && (m2 <= 10)));
  WARN_ON(!((m3 >= 2) && (m3 <= 7)));

  if (!(mc & SSB_CHIPCO_CLK_T2MC_M1BYP))
   clock /= m1;
  if (!(mc & SSB_CHIPCO_CLK_T2MC_M2BYP))
   clock /= m2;
  if (!(mc & SSB_CHIPCO_CLK_T2MC_M3BYP))
   clock /= m3;
  return clock;
 default:
  WARN_ON(1);
 }
 return 0;
}
