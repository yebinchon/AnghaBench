
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genpool_data_fixed {scalar_t__ offset; } ;


 scalar_t__ GENPOOL_OFFSET ;
 unsigned long cpm_muram_alloc_common (unsigned long,int ,struct genpool_data_fixed*) ;
 int cpm_muram_lock ;
 int gen_pool_fixed_alloc ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

unsigned long cpm_muram_alloc_fixed(unsigned long offset, unsigned long size)
{
 unsigned long start;
 unsigned long flags;
 struct genpool_data_fixed muram_pool_data_fixed;

 spin_lock_irqsave(&cpm_muram_lock, flags);
 muram_pool_data_fixed.offset = offset + GENPOOL_OFFSET;
 start = cpm_muram_alloc_common(size, gen_pool_fixed_alloc,
           &muram_pool_data_fixed);
 spin_unlock_irqrestore(&cpm_muram_lock, flags);
 return start;
}
