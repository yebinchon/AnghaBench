
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa3xx_gcu_priv {int spinlock; } ;
struct file {int dummy; } ;


 long ENOSYS ;


 int pxa3xx_gcu_reset (struct pxa3xx_gcu_priv*) ;
 long pxa3xx_gcu_wait_idle (struct pxa3xx_gcu_priv*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct pxa3xx_gcu_priv* to_pxa3xx_gcu_priv (struct file*) ;

__attribute__((used)) static long
pxa3xx_gcu_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
 unsigned long flags;
 struct pxa3xx_gcu_priv *priv = to_pxa3xx_gcu_priv(file);

 switch (cmd) {
 case 129:
  spin_lock_irqsave(&priv->spinlock, flags);
  pxa3xx_gcu_reset(priv);
  spin_unlock_irqrestore(&priv->spinlock, flags);
  return 0;

 case 128:
  return pxa3xx_gcu_wait_idle(priv);
 }

 return -ENOSYS;
}
