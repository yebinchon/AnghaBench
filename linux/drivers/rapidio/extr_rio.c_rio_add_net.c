
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_net {int node; int dev; } ;


 int device_register (int *) ;
 int list_add_tail (int *,int *) ;
 int rio_global_list_lock ;
 int rio_nets ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int rio_add_net(struct rio_net *net)
{
 int err;

 err = device_register(&net->dev);
 if (err)
  return err;
 spin_lock(&rio_global_list_lock);
 list_add_tail(&net->node, &rio_nets);
 spin_unlock(&rio_global_list_lock);

 return 0;
}
