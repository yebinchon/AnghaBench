
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pxa3xx_gcu_priv {int spinlock; TYPE_1__* shared; struct pxa3xx_gcu_batch* ready_last; struct pxa3xx_gcu_batch* ready; struct pxa3xx_gcu_batch* free; } ;
struct pxa3xx_gcu_batch {int* ptr; int length; struct pxa3xx_gcu_batch* next; } ;
struct file {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {int num_words; int hw_running; int num_writes; } ;


 int BUG_ON (int ) ;
 int E2BIG ;
 int EFAULT ;
 int PXA3XX_GCU_BATCH_WORDS ;
 int copy_from_user (int*,char const*,int) ;
 int pxa3xx_gcu_wait_free (struct pxa3xx_gcu_priv*) ;
 int run_ready (struct pxa3xx_gcu_priv*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct pxa3xx_gcu_priv* to_pxa3xx_gcu_priv (struct file*) ;

__attribute__((used)) static ssize_t
pxa3xx_gcu_write(struct file *file, const char *buff,
   size_t count, loff_t *offp)
{
 int ret;
 unsigned long flags;
 struct pxa3xx_gcu_batch *buffer;
 struct pxa3xx_gcu_priv *priv = to_pxa3xx_gcu_priv(file);

 int words = count / 4;



 priv->shared->num_writes++;
 priv->shared->num_words += words;


 if (words >= PXA3XX_GCU_BATCH_WORDS)
  return -E2BIG;


 if (!priv->free) {
  ret = pxa3xx_gcu_wait_free(priv);
  if (ret < 0)
   return ret;
 }




 spin_lock_irqsave(&priv->spinlock, flags);
 buffer = priv->free;
 priv->free = buffer->next;
 spin_unlock_irqrestore(&priv->spinlock, flags);



 ret = copy_from_user(buffer->ptr, buff, words * 4);
 if (ret) {
  spin_lock_irqsave(&priv->spinlock, flags);
  buffer->next = priv->free;
  priv->free = buffer;
  spin_unlock_irqrestore(&priv->spinlock, flags);
  return -EFAULT;
 }

 buffer->length = words;


 buffer->ptr[words] = 0x01000000;




 spin_lock_irqsave(&priv->spinlock, flags);

 buffer->next = ((void*)0);

 if (priv->ready) {
  BUG_ON(priv->ready_last == ((void*)0));

  priv->ready_last->next = buffer;
 } else
  priv->ready = buffer;

 priv->ready_last = buffer;

 if (!priv->shared->hw_running)
  run_ready(priv);

 spin_unlock_irqrestore(&priv->spinlock, flags);

 return words * 4;
}
