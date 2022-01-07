
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rapl_package {int domain_map; TYPE_2__* priv; struct rapl_domain* domains; } ;
struct rapl_domain {int id; scalar_t__ domain_energy_unit; int * regs; TYPE_1__* rpl; int name; struct rapl_package* rp; } ;
typedef enum rapl_domain_type { ____Placeholder_rapl_domain_type } rapl_domain_type ;
typedef enum rapl_domain_reg_id { ____Placeholder_rapl_domain_reg_id } rapl_domain_reg_id ;
struct TYPE_6__ {scalar_t__ dram_domain_energy_unit; } ;
struct TYPE_5__ {int* limits; int ** regs; } ;
struct TYPE_4__ {int name; int prim_id; } ;


 int PL1_ENABLE ;
 int PL2_ENABLE ;
 int RAPL_DOMAIN_DRAM ;
 int RAPL_DOMAIN_MAX ;
 int RAPL_DOMAIN_REG_MAX ;
 int pl1_name ;
 int pl2_name ;
 int pr_info (char*,scalar_t__) ;
 TYPE_3__* rapl_defaults ;
 int * rapl_domain_names ;

__attribute__((used)) static void rapl_init_domains(struct rapl_package *rp)
{
 enum rapl_domain_type i;
 enum rapl_domain_reg_id j;
 struct rapl_domain *rd = rp->domains;

 for (i = 0; i < RAPL_DOMAIN_MAX; i++) {
  unsigned int mask = rp->domain_map & (1 << i);

  if (!mask)
   continue;

  rd->rp = rp;
  rd->name = rapl_domain_names[i];
  rd->id = i;
  rd->rpl[0].prim_id = PL1_ENABLE;
  rd->rpl[0].name = pl1_name;

  if (rp->priv->limits[i] == 2) {
   rd->rpl[1].prim_id = PL2_ENABLE;
   rd->rpl[1].name = pl2_name;
  }

  for (j = 0; j < RAPL_DOMAIN_REG_MAX; j++)
   rd->regs[j] = rp->priv->regs[i][j];

  if (i == RAPL_DOMAIN_DRAM) {
   rd->domain_energy_unit =
       rapl_defaults->dram_domain_energy_unit;
   if (rd->domain_energy_unit)
    pr_info("DRAM domain energy unit %dpj\n",
     rd->domain_energy_unit);
  }
  rd++;
 }
}
