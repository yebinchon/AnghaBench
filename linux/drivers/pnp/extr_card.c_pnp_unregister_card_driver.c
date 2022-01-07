
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_card_driver {int link; int global_list; } ;


 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pnp_lock ;
 int pnp_unregister_driver (int *) ;

void pnp_unregister_card_driver(struct pnp_card_driver *drv)
{
 mutex_lock(&pnp_lock);
 list_del(&drv->global_list);
 mutex_unlock(&pnp_lock);
 pnp_unregister_driver(&drv->link);
}
