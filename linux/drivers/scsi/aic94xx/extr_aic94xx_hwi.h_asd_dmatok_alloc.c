
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asd_dma_tok {int dummy; } ;
typedef int gfp_t ;


 int asd_dma_token_cache ;
 struct asd_dma_tok* kmem_cache_alloc (int ,int ) ;

__attribute__((used)) static inline struct asd_dma_tok *asd_dmatok_alloc(gfp_t flags)
{
 return kmem_cache_alloc(asd_dma_token_cache, flags);
}
