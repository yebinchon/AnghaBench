
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genpool_data_align {unsigned long align; } ;


 unsigned long cpm_muram_alloc_common (unsigned long,int ,struct genpool_data_align*) ;
 int cpm_muram_lock ;
 int gen_pool_first_fit_align ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

unsigned long cpm_muram_alloc(unsigned long size, unsigned long align)
{
 unsigned long start;
 unsigned long flags;
 struct genpool_data_align muram_pool_data;

 spin_lock_irqsave(&cpm_muram_lock, flags);
 muram_pool_data.align = align;
 start = cpm_muram_alloc_common(size, gen_pool_first_fit_align,
           &muram_pool_data);
 spin_unlock_irqrestore(&cpm_muram_lock, flags);
 return start;
}
