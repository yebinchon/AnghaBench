
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct pcmcia_socket {scalar_t__ cb_dev; } ;
typedef int resource_size_t ;


 int IORESOURCE_BUSY ;
 int IORESOURCE_MEM ;
 struct resource iomem_resource ;
 struct resource ioport_resource ;
 int kfree (struct resource*) ;
 struct resource* pci_find_parent_resource (scalar_t__,struct resource*) ;
 struct resource* pcmcia_make_resource (int ,int ,int,char*) ;
 scalar_t__ request_resource (struct resource*,struct resource*) ;

__attribute__((used)) static struct resource *
claim_region(struct pcmcia_socket *s, resource_size_t base,
  resource_size_t size, int type, char *name)
{
 struct resource *res, *parent;

 parent = type & IORESOURCE_MEM ? &iomem_resource : &ioport_resource;
 res = pcmcia_make_resource(base, size, type | IORESOURCE_BUSY, name);

 if (res) {




  if (!parent || request_resource(parent, res)) {
   kfree(res);
   res = ((void*)0);
  }
 }
 return res;
}
