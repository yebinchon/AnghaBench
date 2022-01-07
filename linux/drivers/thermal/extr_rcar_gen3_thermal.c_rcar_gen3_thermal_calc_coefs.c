
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int a1; int b1; int a2; int b2; } ;
struct rcar_gen3_thermal_tsc {int tj_t; TYPE_1__ coef; } ;


 void* FIXPT_DIV (int,int) ;
 int FIXPT_INT (int const) ;
 int TJ_3 ;

__attribute__((used)) static void rcar_gen3_thermal_calc_coefs(struct rcar_gen3_thermal_tsc *tsc,
      int *ptat, const int *thcode,
      int ths_tj_1)
{






 tsc->tj_t = (FIXPT_INT((ptat[1] - ptat[2]) * 157)
       / (ptat[0] - ptat[2])) + FIXPT_INT(TJ_3);

 tsc->coef.a1 = FIXPT_DIV(FIXPT_INT(thcode[1] - thcode[2]),
     tsc->tj_t - FIXPT_INT(TJ_3));
 tsc->coef.b1 = FIXPT_INT(thcode[2]) - tsc->coef.a1 * TJ_3;

 tsc->coef.a2 = FIXPT_DIV(FIXPT_INT(thcode[1] - thcode[0]),
     tsc->tj_t - FIXPT_INT(ths_tj_1));
 tsc->coef.b2 = FIXPT_INT(thcode[0]) - tsc->coef.a2 * ths_tj_1;
}
