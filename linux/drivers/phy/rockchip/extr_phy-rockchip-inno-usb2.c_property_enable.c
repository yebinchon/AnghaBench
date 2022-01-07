
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb2phy_reg {unsigned int enable; unsigned int disable; unsigned int bitstart; int offset; int bitend; } ;
struct regmap {int dummy; } ;


 unsigned int BIT_WRITEABLE_SHIFT ;
 unsigned int GENMASK (int ,unsigned int) ;
 int regmap_write (struct regmap*,int ,unsigned int) ;

__attribute__((used)) static inline int property_enable(struct regmap *base,
      const struct usb2phy_reg *reg, bool en)
{
 unsigned int val, mask, tmp;

 tmp = en ? reg->enable : reg->disable;
 mask = GENMASK(reg->bitend, reg->bitstart);
 val = (tmp << reg->bitstart) | (mask << BIT_WRITEABLE_SHIFT);

 return regmap_write(base, reg->offset, val);
}
