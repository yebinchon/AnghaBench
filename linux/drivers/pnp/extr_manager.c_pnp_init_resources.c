
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dev {int dummy; } ;


 int pnp_free_resources (struct pnp_dev*) ;

void pnp_init_resources(struct pnp_dev *dev)
{
 pnp_free_resources(dev);
}
