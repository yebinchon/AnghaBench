
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reg_action {int value; int mask; int reg; } ;
struct rapl_if_priv {int (* read_raw ) (int ,struct reg_action*) ;struct rapl_domain* platform_rapl_domain; int control_type; int ** regs; } ;
struct rapl_domain {size_t id; int power_zone; int rp; TYPE_1__* rpl; int * regs; int name; } ;
struct powercap_zone {int dummy; } ;
struct TYPE_2__ {int name; int prim_id; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct powercap_zone*) ;
 int PL1_ENABLE ;
 int PL2_ENABLE ;
 int PTR_ERR (struct powercap_zone*) ;
 size_t RAPL_DOMAIN_PLATFORM ;
 size_t RAPL_DOMAIN_REG_LIMIT ;
 size_t RAPL_DOMAIN_REG_STATUS ;
 int constraint_ops ;
 int kfree (struct rapl_domain*) ;
 struct rapl_domain* kzalloc (int,int ) ;
 int pl1_name ;
 int pl2_name ;
 struct powercap_zone* powercap_register_zone (int *,int ,char*,int *,int *,int,int *) ;
 int * rapl_domain_names ;
 int rapl_find_package_domain (int ,struct rapl_if_priv*) ;
 int stub1 (int ,struct reg_action*) ;
 int stub2 (int ,struct reg_action*) ;
 int * zone_ops ;

int rapl_add_platform_domain(struct rapl_if_priv *priv)
{
 struct rapl_domain *rd;
 struct powercap_zone *power_zone;
 struct reg_action ra;
 int ret;

 ra.reg = priv->regs[RAPL_DOMAIN_PLATFORM][RAPL_DOMAIN_REG_STATUS];
 ra.mask = ~0;
 ret = priv->read_raw(0, &ra);
 if (ret || !ra.value)
  return -ENODEV;

 ra.reg = priv->regs[RAPL_DOMAIN_PLATFORM][RAPL_DOMAIN_REG_LIMIT];
 ra.mask = ~0;
 ret = priv->read_raw(0, &ra);
 if (ret || !ra.value)
  return -ENODEV;

 rd = kzalloc(sizeof(*rd), GFP_KERNEL);
 if (!rd)
  return -ENOMEM;

 rd->name = rapl_domain_names[RAPL_DOMAIN_PLATFORM];
 rd->id = RAPL_DOMAIN_PLATFORM;
 rd->regs[RAPL_DOMAIN_REG_LIMIT] =
     priv->regs[RAPL_DOMAIN_PLATFORM][RAPL_DOMAIN_REG_LIMIT];
 rd->regs[RAPL_DOMAIN_REG_STATUS] =
     priv->regs[RAPL_DOMAIN_PLATFORM][RAPL_DOMAIN_REG_STATUS];
 rd->rpl[0].prim_id = PL1_ENABLE;
 rd->rpl[0].name = pl1_name;
 rd->rpl[1].prim_id = PL2_ENABLE;
 rd->rpl[1].name = pl2_name;
 rd->rp = rapl_find_package_domain(0, priv);

 power_zone = powercap_register_zone(&rd->power_zone, priv->control_type,
         "psys", ((void*)0),
         &zone_ops[RAPL_DOMAIN_PLATFORM],
         2, &constraint_ops);

 if (IS_ERR(power_zone)) {
  kfree(rd);
  return PTR_ERR(power_zone);
 }

 priv->platform_rapl_domain = rd;

 return 0;
}
