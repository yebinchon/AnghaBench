
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reg_action {int value; int mask; int reg; } ;
struct rapl_package {TYPE_1__* priv; } ;
struct TYPE_2__ {scalar_t__ (* read_raw ) (int,struct reg_action*) ;int ** regs; } ;


 int EINVAL ;
 int ENODEV ;





 size_t RAPL_DOMAIN_REG_STATUS ;
 int pr_err (char*,int) ;
 scalar_t__ stub1 (int,struct reg_action*) ;

__attribute__((used)) static int rapl_check_domain(int cpu, int domain, struct rapl_package *rp)
{
 struct reg_action ra;

 switch (domain) {
 case 131:
 case 129:
 case 128:
 case 132:
  ra.reg = rp->priv->regs[domain][RAPL_DOMAIN_REG_STATUS];
  break;
 case 130:

  return -EINVAL;
 default:
  pr_err("invalid domain id %d\n", domain);
  return -EINVAL;
 }




 ra.mask = ~0;
 if (rp->priv->read_raw(cpu, &ra) || !ra.value)
  return -ENODEV;

 return 0;
}
