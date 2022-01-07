
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rcar_gen3_thermal_tsc {int dummy; } ;


 int IRQ_TEMP2 ;
 int IRQ_TEMPD1 ;
 int REG_GEN3_IRQCTL ;
 int REG_GEN3_IRQEN ;
 int REG_GEN3_IRQMSK ;
 int REG_GEN3_THCTR ;
 int THCTR_PONM ;
 int THCTR_THSST ;
 int rcar_gen3_thermal_read (struct rcar_gen3_thermal_tsc*,int ) ;
 int rcar_gen3_thermal_write (struct rcar_gen3_thermal_tsc*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void rcar_gen3_thermal_init(struct rcar_gen3_thermal_tsc *tsc)
{
 u32 reg_val;

 reg_val = rcar_gen3_thermal_read(tsc, REG_GEN3_THCTR);
 reg_val &= ~THCTR_PONM;
 rcar_gen3_thermal_write(tsc, REG_GEN3_THCTR, reg_val);

 usleep_range(1000, 2000);

 rcar_gen3_thermal_write(tsc, REG_GEN3_IRQCTL, 0);
 rcar_gen3_thermal_write(tsc, REG_GEN3_IRQMSK, 0);
 rcar_gen3_thermal_write(tsc, REG_GEN3_IRQEN, IRQ_TEMPD1 | IRQ_TEMP2);

 reg_val = rcar_gen3_thermal_read(tsc, REG_GEN3_THCTR);
 reg_val |= THCTR_THSST;
 rcar_gen3_thermal_write(tsc, REG_GEN3_THCTR, reg_val);

 usleep_range(1000, 2000);
}
