
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int a2; scalar_t__ b2; int a1; scalar_t__ b1; } ;
struct rcar_gen3_thermal_tsc {size_t id; TYPE_1__ coef; } ;


 int CTEMP_MASK ;
 int EIO ;
 int FIXPT_DIV (scalar_t__,int ) ;
 scalar_t__ FIXPT_INT (int) ;
 int FIXPT_TO_MCELSIUS (int) ;
 int MCELSIUS (int) ;
 int REG_GEN3_TEMP ;
 int rcar_gen3_thermal_read (struct rcar_gen3_thermal_tsc*,int ) ;
 int rcar_gen3_thermal_round (int) ;
 int** thcode ;

__attribute__((used)) static int rcar_gen3_thermal_get_temp(void *devdata, int *temp)
{
 struct rcar_gen3_thermal_tsc *tsc = devdata;
 int mcelsius, val;
 u32 reg;


 reg = rcar_gen3_thermal_read(tsc, REG_GEN3_TEMP) & CTEMP_MASK;

 if (reg <= thcode[tsc->id][1])
  val = FIXPT_DIV(FIXPT_INT(reg) - tsc->coef.b1,
    tsc->coef.a1);
 else
  val = FIXPT_DIV(FIXPT_INT(reg) - tsc->coef.b2,
    tsc->coef.a2);
 mcelsius = FIXPT_TO_MCELSIUS(val);


 if ((mcelsius < MCELSIUS(-40)) || (mcelsius > MCELSIUS(125)))
  return -EIO;


 *temp = rcar_gen3_thermal_round(mcelsius);

 return 0;
}
