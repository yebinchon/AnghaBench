
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {unsigned long start; } ;
struct pnp_dev {int dev; } ;


 int pnp_dbg (int *,char*,unsigned long,unsigned long) ;
 scalar_t__ pnp_resource_enabled (struct resource*) ;
 unsigned long resource_size (struct resource*) ;

__attribute__((used)) static void pnpbios_encode_fixed_port(struct pnp_dev *dev, unsigned char *p,
          struct resource *res)
{
 unsigned long base = res->start;
 unsigned long len = resource_size(res);

 if (pnp_resource_enabled(res)) {
  base = res->start;
  len = resource_size(res);
 } else {
  base = 0;
  len = 0;
 }

 p[1] = base & 0xff;
 p[2] = (base >> 8) & 0xff;
 p[3] = len & 0xff;

 pnp_dbg(&dev->dev, "  encode fixed_io %#lx-%#lx\n", base,
  base + len - 1);
}
