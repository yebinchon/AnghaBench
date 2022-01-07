
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int dev; } ;
struct xen_pcibk_device {int dummy; } ;


 struct xen_pcibk_device* dev_get_drvdata (int *) ;
 int free_pdev (struct xen_pcibk_device*) ;

__attribute__((used)) static int xen_pcibk_xenbus_remove(struct xenbus_device *dev)
{
 struct xen_pcibk_device *pdev = dev_get_drvdata(&dev->dev);

 if (pdev != ((void*)0))
  free_pdev(pdev);

 return 0;
}
