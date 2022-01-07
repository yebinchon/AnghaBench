
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; int flags; int end; } ;
struct pcmcia_align_data {int mask; int offset; } ;
typedef int resource_size_t ;


 int IORESOURCE_IO ;

__attribute__((used)) static resource_size_t pcmcia_align(void *align_data,
    const struct resource *res,
    resource_size_t size, resource_size_t align)
{
 struct pcmcia_align_data *data = align_data;
 resource_size_t start;

 start = (res->start & ~data->mask) + data->offset;
 if (start < res->start)
  start += data->mask + 1;
 return start;
}
