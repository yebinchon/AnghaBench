
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct pcmcia_socket {TYPE_1__* cb_dev; int dev; } ;
struct pcmcia_align_data {unsigned long mask; unsigned long offset; } ;
struct TYPE_2__ {int bus; } ;


 int IORESOURCE_IO ;
 int allocate_resource (int *,struct resource*,int,unsigned long,unsigned long,int,int ,struct pcmcia_align_data*) ;
 int dev_name (int *) ;
 int ioport_resource ;
 int kfree (struct resource*) ;
 int pci_bus_alloc_resource (int ,struct resource*,int,int,unsigned long,int ,int ,struct pcmcia_align_data*) ;
 int pcmcia_align ;
 struct resource* pcmcia_make_resource (int ,int,int ,int ) ;

__attribute__((used)) static struct resource *__iodyn_find_io_region(struct pcmcia_socket *s,
     unsigned long base, int num,
     unsigned long align)
{
 struct resource *res = pcmcia_make_resource(0, num, IORESOURCE_IO,
      dev_name(&s->dev));
 struct pcmcia_align_data data;
 unsigned long min = base;
 int ret;

 data.mask = align - 1;
 data.offset = base & data.mask;







  ret = allocate_resource(&ioport_resource, res, num, min, ~0UL,
     1, pcmcia_align, &data);

 if (ret != 0) {
  kfree(res);
  res = ((void*)0);
 }
 return res;
}
