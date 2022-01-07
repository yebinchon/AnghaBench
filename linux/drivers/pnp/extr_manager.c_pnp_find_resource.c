
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {unsigned char flags; } ;
struct pnp_dev {int dummy; } ;


 unsigned char IORESOURCE_BITS ;
 struct resource* pnp_get_resource (struct pnp_dev*,unsigned long,unsigned int) ;

__attribute__((used)) static struct resource *pnp_find_resource(struct pnp_dev *dev,
       unsigned char rule,
       unsigned long type,
       unsigned int bar)
{
 struct resource *res = pnp_get_resource(dev, type, bar);


 if (res) {
  res->flags &= ~IORESOURCE_BITS;
  res->flags |= rule & IORESOURCE_BITS;
 }

 return res;
}
