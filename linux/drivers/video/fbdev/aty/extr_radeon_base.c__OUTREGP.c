
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct radeonfb_info {int reg_lock; } ;


 unsigned int INREG (unsigned int) ;
 int OUTREG (unsigned int,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void _OUTREGP(struct radeonfb_info *rinfo, u32 addr, u32 val, u32 mask)
{
 unsigned long flags;
 unsigned int tmp;

 spin_lock_irqsave(&rinfo->reg_lock, flags);
 tmp = INREG(addr);
 tmp &= (mask);
 tmp |= (val);
 OUTREG(addr, tmp);
 spin_unlock_irqrestore(&rinfo->reg_lock, flags);
}
