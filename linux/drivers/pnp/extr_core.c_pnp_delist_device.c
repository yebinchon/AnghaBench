
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dev {int protocol_list; int global_list; } ;


 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pnp_lock ;

__attribute__((used)) static void pnp_delist_device(struct pnp_dev *dev)
{
 mutex_lock(&pnp_lock);
 list_del(&dev->global_list);
 list_del(&dev->protocol_list);
 mutex_unlock(&pnp_lock);
}
