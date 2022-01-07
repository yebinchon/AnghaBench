
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvmet_port {int dummy; } ;
struct config_item {TYPE_1__* ci_parent; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {struct config_item* ci_parent; } ;


 size_t EINVAL ;
 int nvmet_referral_disable (struct nvmet_port*,struct nvmet_port*) ;
 int nvmet_referral_enable (struct nvmet_port*,struct nvmet_port*) ;
 int pr_err (char*,char const*) ;
 scalar_t__ strtobool (char const*,int*) ;
 struct nvmet_port* to_nvmet_port (struct config_item*) ;

__attribute__((used)) static ssize_t nvmet_referral_enable_store(struct config_item *item,
  const char *page, size_t count)
{
 struct nvmet_port *parent = to_nvmet_port(item->ci_parent->ci_parent);
 struct nvmet_port *port = to_nvmet_port(item);
 bool enable;

 if (strtobool(page, &enable))
  goto inval;

 if (enable)
  nvmet_referral_enable(parent, port);
 else
  nvmet_referral_disable(parent, port);

 return count;
inval:
 pr_err("Invalid value '%s' for enable\n", page);
 return -EINVAL;
}
