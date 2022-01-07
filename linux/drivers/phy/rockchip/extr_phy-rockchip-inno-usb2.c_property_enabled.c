
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb2phy_reg {unsigned int bitstart; unsigned int enable; int offset; int bitend; } ;
struct regmap {int dummy; } ;


 unsigned int GENMASK (int ,unsigned int) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;

__attribute__((used)) static inline bool property_enabled(struct regmap *base,
        const struct usb2phy_reg *reg)
{
 int ret;
 unsigned int tmp, orig;
 unsigned int mask = GENMASK(reg->bitend, reg->bitstart);

 ret = regmap_read(base, reg->offset, &orig);
 if (ret)
  return 0;

 tmp = (orig & mask) >> reg->bitstart;
 return tmp == reg->enable;
}
