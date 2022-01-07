
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_info {scalar_t__ uV; scalar_t__ uA; int reg; } ;
struct q6v5 {int dummy; } ;


 int INT_MAX ;
 int regulator_disable (int ) ;
 int regulator_set_load (int ,int ) ;
 int regulator_set_voltage (int ,int ,int ) ;

__attribute__((used)) static void q6v5_regulator_disable(struct q6v5 *qproc,
       struct reg_info *regs, int count)
{
 int i;

 for (i = 0; i < count; i++) {
  if (regs[i].uV > 0)
   regulator_set_voltage(regs[i].reg, 0, INT_MAX);

  if (regs[i].uA > 0)
   regulator_set_load(regs[i].reg, 0);

  regulator_disable(regs[i].reg);
 }
}
