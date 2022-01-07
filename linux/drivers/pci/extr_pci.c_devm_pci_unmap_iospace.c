
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct device {int dummy; } ;


 int pci_unmap_iospace (struct resource*) ;

__attribute__((used)) static void devm_pci_unmap_iospace(struct device *dev, void *ptr)
{
 struct resource **res = ptr;

 pci_unmap_iospace(*res);
}
