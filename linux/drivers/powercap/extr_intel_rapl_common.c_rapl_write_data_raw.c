
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct reg_action {int value; int mask; int reg; } ;
struct rapl_primitive_info {size_t id; int mask; int shift; int unit; } ;
struct rapl_domain {TYPE_2__* rp; int * regs; } ;
typedef int ra ;
typedef enum rapl_primitives { ____Placeholder_rapl_primitives } rapl_primitives ;
struct TYPE_4__ {int lead_cpu; TYPE_1__* priv; } ;
struct TYPE_3__ {int (* write_raw ) (int,struct reg_action*) ;} ;


 int memset (struct reg_action*,int ,int) ;
 int rapl_unit_xlate (struct rapl_domain*,int ,unsigned long long,int) ;
 struct rapl_primitive_info* rpi ;
 int stub1 (int,struct reg_action*) ;

__attribute__((used)) static int rapl_write_data_raw(struct rapl_domain *rd,
          enum rapl_primitives prim,
          unsigned long long value)
{
 struct rapl_primitive_info *rp = &rpi[prim];
 int cpu;
 u64 bits;
 struct reg_action ra;
 int ret;

 cpu = rd->rp->lead_cpu;
 bits = rapl_unit_xlate(rd, rp->unit, value, 1);
 bits <<= rp->shift;
 bits &= rp->mask;

 memset(&ra, 0, sizeof(ra));

 ra.reg = rd->regs[rp->id];
 ra.mask = rp->mask;
 ra.value = bits;

 ret = rd->rp->priv->write_raw(cpu, &ra);

 return ret;
}
