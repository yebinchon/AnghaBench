
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct oxu_hcd {int mem_lock; scalar_t__* db_used; TYPE_1__* mem; } ;
struct ehci_qtd {void* buffer; scalar_t__ buffer_dma; scalar_t__ qtd_buffer_len; } ;
struct TYPE_2__ {int * db_pool; } ;


 int BUFFER_SIZE ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void oxu_buf_free(struct oxu_hcd *oxu, struct ehci_qtd *qtd)
{
 int index;

 spin_lock(&oxu->mem_lock);

 index = (qtd->buffer - (void *) &oxu->mem->db_pool[0])
        / BUFFER_SIZE;
 oxu->db_used[index] = 0;
 qtd->qtd_buffer_len = 0;
 qtd->buffer_dma = 0;
 qtd->buffer = ((void*)0);

 spin_unlock(&oxu->mem_lock);
}
