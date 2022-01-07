
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvmet_port {int dummy; } ;
struct config_item {TYPE_1__* ci_parent; } ;
struct TYPE_2__ {struct config_item* ci_parent; } ;


 int kfree (struct nvmet_port*) ;
 int nvmet_referral_disable (struct nvmet_port*,struct nvmet_port*) ;
 struct nvmet_port* to_nvmet_port (struct config_item*) ;

__attribute__((used)) static void nvmet_referral_release(struct config_item *item)
{
 struct nvmet_port *parent = to_nvmet_port(item->ci_parent->ci_parent);
 struct nvmet_port *port = to_nvmet_port(item);

 nvmet_referral_disable(parent, port);
 kfree(port);
}
