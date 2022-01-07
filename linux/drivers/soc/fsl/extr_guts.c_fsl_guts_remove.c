
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int of_node_put (int ) ;
 int root ;
 int soc_dev ;
 int soc_device_unregister (int ) ;

__attribute__((used)) static int fsl_guts_remove(struct platform_device *dev)
{
 soc_device_unregister(soc_dev);
 of_node_put(root);
 return 0;
}
