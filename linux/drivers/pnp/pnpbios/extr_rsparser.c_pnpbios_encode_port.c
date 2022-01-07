
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {unsigned long start; } ;
struct pnp_dev {int dev; } ;


 int pnp_dbg (int *,char*,unsigned long,unsigned long) ;
 scalar_t__ pnp_resource_enabled (struct resource*) ;
 unsigned long resource_size (struct resource*) ;

__attribute__((used)) static void pnpbios_encode_port(struct pnp_dev *dev, unsigned char *p,
    struct resource *res)
{
 unsigned long base;
 unsigned long len;

 if (pnp_resource_enabled(res)) {
  base = res->start;
  len = resource_size(res);
 } else {
  base = 0;
  len = 0;
 }

 p[2] = base & 0xff;
 p[3] = (base >> 8) & 0xff;
 p[4] = base & 0xff;
 p[5] = (base >> 8) & 0xff;
 p[7] = len & 0xff;

 pnp_dbg(&dev->dev, "  encode io %#lx-%#lx\n", base, base + len - 1);
}
