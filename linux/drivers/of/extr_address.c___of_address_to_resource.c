
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct resource {unsigned int flags; char const* name; scalar_t__ end; scalar_t__ start; } ;
struct device_node {char const* full_name; } ;
typedef int __be32 ;


 int EINVAL ;
 unsigned int IORESOURCE_IO ;
 unsigned int IORESOURCE_MEM ;
 scalar_t__ OF_BAD_ADDR ;
 int memset (struct resource*,int ,int) ;
 scalar_t__ of_translate_address (struct device_node*,int const*) ;
 scalar_t__ of_translate_ioport (struct device_node*,int const*,scalar_t__) ;

__attribute__((used)) static int __of_address_to_resource(struct device_node *dev,
  const __be32 *addrp, u64 size, unsigned int flags,
  const char *name, struct resource *r)
{
 u64 taddr;

 if (flags & IORESOURCE_MEM)
  taddr = of_translate_address(dev, addrp);
 else if (flags & IORESOURCE_IO)
  taddr = of_translate_ioport(dev, addrp, size);
 else
  return -EINVAL;

 if (taddr == OF_BAD_ADDR)
  return -EINVAL;
 memset(r, 0, sizeof(struct resource));

 r->start = taddr;
 r->end = taddr + size - 1;
 r->flags = flags;
 r->name = name ? name : dev->full_name;

 return 0;
}
