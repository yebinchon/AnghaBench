
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct sh_pfc {int lock; } ;


 int EINVAL ;
 unsigned int GENMASK (unsigned int,int ) ;
 unsigned int sh_pfc_pinconf_find_drive_strength_reg (struct sh_pfc*,unsigned int,unsigned int*,unsigned int*) ;
 unsigned int sh_pfc_read (struct sh_pfc*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int sh_pfc_pinconf_get_drive_strength(struct sh_pfc *pfc,
          unsigned int pin)
{
 unsigned long flags;
 unsigned int offset;
 unsigned int size;
 u32 reg;
 u32 val;

 reg = sh_pfc_pinconf_find_drive_strength_reg(pfc, pin, &offset, &size);
 if (!reg)
  return -EINVAL;

 spin_lock_irqsave(&pfc->lock, flags);
 val = sh_pfc_read(pfc, reg);
 spin_unlock_irqrestore(&pfc->lock, flags);

 val = (val >> offset) & GENMASK(size - 1, 0);




 return (val + 1) * (size == 2 ? 6 : 3);
}
