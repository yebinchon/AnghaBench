
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wrb_handle {int * pio_handle; } ;
struct hwi_wrb_context {size_t free_index; int wrb_lock; int wrb_handles_available; struct wrb_handle** pwrb_handle_base; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void
beiscsi_put_wrb_handle(struct hwi_wrb_context *pwrb_context,
         struct wrb_handle *pwrb_handle,
         unsigned int wrbs_per_cxn)
{
 unsigned long flags;

 spin_lock_irqsave(&pwrb_context->wrb_lock, flags);
 pwrb_context->pwrb_handle_base[pwrb_context->free_index] = pwrb_handle;
 pwrb_context->wrb_handles_available++;
 if (pwrb_context->free_index == (wrbs_per_cxn - 1))
  pwrb_context->free_index = 0;
 else
  pwrb_context->free_index++;
 pwrb_handle->pio_handle = ((void*)0);
 spin_unlock_irqrestore(&pwrb_context->wrb_lock, flags);
}
