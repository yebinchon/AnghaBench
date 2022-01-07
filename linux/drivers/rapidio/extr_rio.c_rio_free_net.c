
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_net {int dev; int (* release ) (struct rio_net*) ;int node; } ;


 int device_unregister (int *) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int rio_global_list_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct rio_net*) ;

void rio_free_net(struct rio_net *net)
{
 spin_lock(&rio_global_list_lock);
 if (!list_empty(&net->node))
  list_del(&net->node);
 spin_unlock(&rio_global_list_lock);
 if (net->release)
  net->release(net);
 device_unregister(&net->dev);
}
