
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {struct keystone_rproc* priv; } ;
struct keystone_rproc {scalar_t__ kick_gpio; } ;


 scalar_t__ WARN_ON (int) ;
 int gpio_set_value (scalar_t__,int) ;

__attribute__((used)) static void keystone_rproc_kick(struct rproc *rproc, int vqid)
{
 struct keystone_rproc *ksproc = rproc->priv;

 if (WARN_ON(ksproc->kick_gpio < 0))
  return;

 gpio_set_value(ksproc->kick_gpio, 1);
}
