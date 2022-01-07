
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_resource {int list; } ;


 int kfree (struct pnp_resource*) ;
 int list_del (int *) ;

void pnp_free_resource(struct pnp_resource *pnp_res)
{
 list_del(&pnp_res->list);
 kfree(pnp_res);
}
