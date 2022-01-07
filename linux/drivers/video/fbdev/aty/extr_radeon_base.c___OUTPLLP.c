
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct radeonfb_info {int dummy; } ;


 unsigned int __INPLL (struct radeonfb_info*,unsigned int) ;
 int __OUTPLL (struct radeonfb_info*,unsigned int,unsigned int) ;

void __OUTPLLP(struct radeonfb_info *rinfo, unsigned int index,
        u32 val, u32 mask)
{
 unsigned int tmp;

 tmp = __INPLL(rinfo, index);
 tmp &= (mask);
 tmp |= (val);
 __OUTPLL(rinfo, index, tmp);
}
