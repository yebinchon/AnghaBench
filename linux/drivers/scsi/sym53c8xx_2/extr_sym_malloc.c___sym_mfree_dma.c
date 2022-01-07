
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* m_pool_p ;
typedef int m_pool_ident_t ;
struct TYPE_5__ {int nump; } ;


 int ___del_dma_pool (TYPE_1__*) ;
 TYPE_1__* ___get_dma_pool (int ) ;
 int __sym_mfree (TYPE_1__*,void*,int,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sym53c8xx_lock ;

void __sym_mfree_dma(m_pool_ident_t dev_dmat, void *m, int size, char *name)
{
 unsigned long flags;
 m_pool_p mp;

 spin_lock_irqsave(&sym53c8xx_lock, flags);
 mp = ___get_dma_pool(dev_dmat);
 if (!mp)
  goto out;
 __sym_mfree(mp, m, size, name);




 out:
 spin_unlock_irqrestore(&sym53c8xx_lock, flags);
}
