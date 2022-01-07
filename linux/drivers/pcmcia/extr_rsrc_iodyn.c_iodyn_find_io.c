
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {unsigned int start; unsigned int flags; int end; } ;
struct pcmcia_socket {TYPE_1__* io; } ;
struct TYPE_2__ {unsigned int InUse; struct resource* res; } ;


 int EBUSY ;
 int EINVAL ;
 unsigned int IORESOURCE_BITS ;
 int MAX_IO_WIN ;
 struct resource* __iodyn_find_io_region (struct pcmcia_socket*,unsigned int,unsigned int,unsigned int) ;
 scalar_t__ adjust_resource (struct resource*,unsigned int,scalar_t__) ;
 scalar_t__ resource_size (struct resource*) ;

__attribute__((used)) static int iodyn_find_io(struct pcmcia_socket *s, unsigned int attr,
   unsigned int *base, unsigned int num,
   unsigned int align, struct resource **parent)
{
 int i, ret = 0;





 for (i = 0; i < MAX_IO_WIN; i++) {
  if (!s->io[i].res)
   continue;

  if (!*base)
   continue;

  if ((s->io[i].res->start & (align-1)) == *base)
   return -EBUSY;
 }

 for (i = 0; i < MAX_IO_WIN; i++) {
  struct resource *res = s->io[i].res;
  unsigned int try;

  if (res && (res->flags & IORESOURCE_BITS) !=
   (attr & IORESOURCE_BITS))
   continue;

  if (!res) {
   if (align == 0)
    align = 0x10000;

   res = s->io[i].res = __iodyn_find_io_region(s, *base,
        num, align);
   if (!res)
    return -EINVAL;

   *base = res->start;
   s->io[i].res->flags =
    ((res->flags & ~IORESOURCE_BITS) |
     (attr & IORESOURCE_BITS));
   s->io[i].InUse = num;
   *parent = res;
   return 0;
  }


  try = res->end + 1;
  if ((*base == 0) || (*base == try)) {
   if (adjust_resource(s->io[i].res, res->start,
         resource_size(res) + num))
    continue;
   *base = try;
   s->io[i].InUse += num;
   *parent = res;
   return 0;
  }


  try = res->start - num;
  if ((*base == 0) || (*base == try)) {
   if (adjust_resource(s->io[i].res,
         res->start - num,
         resource_size(res) + num))
    continue;
   *base = try;
   s->io[i].InUse += num;
   *parent = res;
   return 0;
  }
 }

 return -EINVAL;
}
