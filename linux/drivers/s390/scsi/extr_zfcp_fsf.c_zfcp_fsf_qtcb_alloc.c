
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsf_qtcb {int dummy; } ;
typedef int mempool_t ;


 int GFP_ATOMIC ;
 struct fsf_qtcb* kmem_cache_alloc (int ,int ) ;
 scalar_t__ likely (int *) ;
 struct fsf_qtcb* mempool_alloc (int *,int ) ;
 int memset (struct fsf_qtcb*,int ,int) ;
 scalar_t__ unlikely (int) ;
 int zfcp_fsf_qtcb_cache ;

__attribute__((used)) static struct fsf_qtcb *zfcp_fsf_qtcb_alloc(mempool_t *pool)
{
 struct fsf_qtcb *qtcb;

 if (likely(pool))
  qtcb = mempool_alloc(pool, GFP_ATOMIC);
 else
  qtcb = kmem_cache_alloc(zfcp_fsf_qtcb_cache, GFP_ATOMIC);

 if (unlikely(!qtcb))
  return ((void*)0);

 memset(qtcb, 0, sizeof(*qtcb));
 return qtcb;
}
