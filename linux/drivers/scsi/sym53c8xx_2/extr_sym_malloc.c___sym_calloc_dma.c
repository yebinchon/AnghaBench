
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* m_pool_p ;
typedef int m_pool_ident_t ;
struct TYPE_6__ {int nump; } ;


 TYPE_1__* ___cre_dma_pool (int ) ;
 int ___del_dma_pool (TYPE_1__*) ;
 TYPE_1__* ___get_dma_pool (int ) ;
 void* __sym_calloc (TYPE_1__*,int,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sym53c8xx_lock ;

void *__sym_calloc_dma(m_pool_ident_t dev_dmat, int size, char *name)
{
 unsigned long flags;
 m_pool_p mp;
 void *m = ((void*)0);

 spin_lock_irqsave(&sym53c8xx_lock, flags);
 mp = ___get_dma_pool(dev_dmat);
 if (!mp)
  mp = ___cre_dma_pool(dev_dmat);
 if (!mp)
  goto out;
 m = __sym_calloc(mp, size, name);





 out:
 spin_unlock_irqrestore(&sym53c8xx_lock, flags);
 return m;
}
