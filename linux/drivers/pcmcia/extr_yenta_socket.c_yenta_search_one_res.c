
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct resource {int flags; unsigned long end; unsigned long start; } ;


 unsigned long BRIDGE_IO_MAX ;
 unsigned long BRIDGE_MEM_MAX ;
 int IORESOURCE_IO ;
 unsigned long PCIBIOS_MIN_CARDBUS_IO ;
 unsigned long PCIBIOS_MIN_MEM ;
 scalar_t__ allocate_resource (struct resource*,struct resource*,unsigned long,unsigned long,unsigned long,unsigned long,int *,int *) ;

__attribute__((used)) static int yenta_search_one_res(struct resource *root, struct resource *res,
    u32 min)
{
 u32 align, size, start, end;

 if (res->flags & IORESOURCE_IO) {
  align = 1024;
  size = BRIDGE_IO_MAX;
  start = PCIBIOS_MIN_CARDBUS_IO;
  end = ~0U;
 } else {
  unsigned long avail = root->end - root->start;
  int i;
  size = BRIDGE_MEM_MAX;
  if (size > avail/8) {
   size = (avail+1)/8;

   i = 0;
   while ((size /= 2) != 0)
    i++;
   size = 1 << i;
  }
  if (size < min)
   size = min;
  align = size;
  start = PCIBIOS_MIN_MEM;
  end = ~0U;
 }

 do {
  if (allocate_resource(root, res, size, start, end, align,
          ((void*)0), ((void*)0)) == 0) {
   return 1;
  }
  size = size/2;
  align = size;
 } while (size >= min);

 return 0;
}
