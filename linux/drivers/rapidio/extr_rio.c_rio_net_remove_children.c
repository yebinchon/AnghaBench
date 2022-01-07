
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_net {int dev; } ;


 int device_for_each_child (int *,int *,int ) ;
 int rio_mport_cleanup_callback ;

__attribute__((used)) static int rio_net_remove_children(struct rio_net *net)
{




 device_for_each_child(&net->dev, ((void*)0), rio_mport_cleanup_callback);
 return 0;
}
