
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_thermal {int o_slope; int adc_ge; int* vts; int degc_cali; TYPE_1__* conf; } ;
typedef int s32 ;
struct TYPE_2__ {int cali_val; } ;



__attribute__((used)) static int raw_to_mcelsius(struct mtk_thermal *mt, int sensno, s32 raw)
{
 s32 tmp;

 raw &= 0xfff;

 tmp = 203450520 << 3;
 tmp /= mt->conf->cali_val + mt->o_slope;
 tmp /= 10000 + mt->adc_ge;
 tmp *= raw - mt->vts[sensno] - 3350;
 tmp >>= 3;

 return mt->degc_cali * 500 - tmp;
}
