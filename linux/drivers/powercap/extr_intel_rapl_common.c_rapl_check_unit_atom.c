
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct reg_action {int value; int mask; int reg; } ;
struct rapl_package {int energy_unit; int power_unit; int time_unit; int name; TYPE_1__* priv; } ;
struct TYPE_2__ {int reg_unit; scalar_t__ (* read_raw ) (int,struct reg_action*) ;} ;


 int ENERGY_UNIT_MASK ;
 int ENERGY_UNIT_OFFSET ;
 int ENERGY_UNIT_SCALE ;
 int ENODEV ;
 int POWER_UNIT_MASK ;
 int POWER_UNIT_OFFSET ;
 int TIME_UNIT_MASK ;
 int TIME_UNIT_OFFSET ;
 int pr_debug (char*,int ,int,int,int) ;
 int pr_err (char*,int ,int) ;
 scalar_t__ stub1 (int,struct reg_action*) ;

__attribute__((used)) static int rapl_check_unit_atom(struct rapl_package *rp, int cpu)
{
 struct reg_action ra;
 u32 value;

 ra.reg = rp->priv->reg_unit;
 ra.mask = ~0;
 if (rp->priv->read_raw(cpu, &ra)) {
  pr_err("Failed to read power unit REG 0x%llx on CPU %d, exit.\n",
         rp->priv->reg_unit, cpu);
  return -ENODEV;
 }

 value = (ra.value & ENERGY_UNIT_MASK) >> ENERGY_UNIT_OFFSET;
 rp->energy_unit = ENERGY_UNIT_SCALE * 1 << value;

 value = (ra.value & POWER_UNIT_MASK) >> POWER_UNIT_OFFSET;
 rp->power_unit = (1 << value) * 1000;

 value = (ra.value & TIME_UNIT_MASK) >> TIME_UNIT_OFFSET;
 rp->time_unit = 1000000 / (1 << value);

 pr_debug("Atom %s energy=%dpJ, time=%dus, power=%duW\n",
   rp->name, rp->energy_unit, rp->time_unit, rp->power_unit);

 return 0;
}
