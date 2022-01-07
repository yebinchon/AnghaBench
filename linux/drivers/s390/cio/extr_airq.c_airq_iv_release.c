
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct airq_iv {int flags; struct airq_iv* avail; int bits; int vector; int vector_dma; struct airq_iv* bitlock; struct airq_iv* ptr; struct airq_iv* data; } ;


 int AIRQ_IV_CACHELINE ;
 int airq_iv_cache ;
 int cio_dma_free (int ,int ) ;
 int dma_pool_free (int ,int ,int ) ;
 int iv_size (int ) ;
 int kfree (struct airq_iv*) ;

void airq_iv_release(struct airq_iv *iv)
{
 kfree(iv->data);
 kfree(iv->ptr);
 kfree(iv->bitlock);
 if (iv->flags & AIRQ_IV_CACHELINE)
  dma_pool_free(airq_iv_cache, iv->vector, iv->vector_dma);
 else
  cio_dma_free(iv->vector, iv_size(iv->bits));
 kfree(iv->avail);
 kfree(iv);
}
