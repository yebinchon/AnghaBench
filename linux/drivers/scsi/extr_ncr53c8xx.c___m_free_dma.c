
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct m_pool {int nump; } ;
typedef int m_bush_t ;


 int ___del_dma_pool (struct m_pool*) ;
 struct m_pool* ___get_dma_pool (int ) ;
 int __m_free (struct m_pool*,void*,int,char*) ;
 int ncr53c8xx_lock ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static void __m_free_dma(m_bush_t bush, void *m, int size, char *name)
{
 u_long flags;
 struct m_pool *mp;

 spin_lock_irqsave(&ncr53c8xx_lock, flags);
 mp = ___get_dma_pool(bush);
 if (mp)
  __m_free(mp, m, size, name);
 if (mp && !mp->nump)
  ___del_dma_pool(mp);
 spin_unlock_irqrestore(&ncr53c8xx_lock, flags);
}
