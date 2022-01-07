
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* m_pool_p ;
typedef int m_pool_ident_t ;
struct TYPE_5__ {TYPE_1__* next; } ;
struct TYPE_4__ {struct TYPE_4__* next; int dev_dmat; } ;


 TYPE_2__ mp0 ;
 int sym_m_pool_match (int ,int ) ;

__attribute__((used)) static inline m_pool_p ___get_dma_pool(m_pool_ident_t dev_dmat)
{
 m_pool_p mp;
 for (mp = mp0.next;
  mp && !sym_m_pool_match(mp->dev_dmat, dev_dmat);
   mp = mp->next);
 return mp;
}
