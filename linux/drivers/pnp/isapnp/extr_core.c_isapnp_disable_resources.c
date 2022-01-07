
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pnp_dev {scalar_t__ active; int number; TYPE_1__* card; } ;
struct TYPE_2__ {int number; } ;


 int EINVAL ;
 int isapnp_cfg_begin (int ,int ) ;
 int isapnp_cfg_end () ;
 int isapnp_deactivate (int ) ;

__attribute__((used)) static int isapnp_disable_resources(struct pnp_dev *dev)
{
 if (!dev->active)
  return -EINVAL;
 isapnp_cfg_begin(dev->card->number, dev->number);
 isapnp_deactivate(dev->number);
 dev->active = 0;
 isapnp_cfg_end();
 return 0;
}
