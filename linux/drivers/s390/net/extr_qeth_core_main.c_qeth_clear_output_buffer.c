
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qeth_qdio_out_q {int max_elements; int set_pci_flags_count; } ;
struct qeth_qdio_out_buffer {int state; scalar_t__ bytes; scalar_t__ next_element_to_fill; TYPE_2__* buffer; scalar_t__* is_header; } ;
struct TYPE_4__ {TYPE_1__* element; } ;
struct TYPE_3__ {int sflags; scalar_t__ addr; } ;


 int QETH_QDIO_BUF_EMPTY ;
 int SBAL_SFLAGS0_PCI_REQ ;
 int atomic_dec (int *) ;
 int atomic_set (int *,int ) ;
 int kmem_cache_free (int ,scalar_t__) ;
 int qeth_core_header_cache ;
 int qeth_scrub_qdio_buffer (TYPE_2__*,int) ;
 int qeth_tx_complete_buf (struct qeth_qdio_out_buffer*,int,int) ;

__attribute__((used)) static void qeth_clear_output_buffer(struct qeth_qdio_out_q *queue,
         struct qeth_qdio_out_buffer *buf,
         bool error, int budget)
{
 int i;


 if (buf->buffer->element[0].sflags & SBAL_SFLAGS0_PCI_REQ)
  atomic_dec(&queue->set_pci_flags_count);

 qeth_tx_complete_buf(buf, error, budget);

 for (i = 0; i < queue->max_elements; ++i) {
  if (buf->buffer->element[i].addr && buf->is_header[i])
   kmem_cache_free(qeth_core_header_cache,
    buf->buffer->element[i].addr);
  buf->is_header[i] = 0;
 }

 qeth_scrub_qdio_buffer(buf->buffer, queue->max_elements);
 buf->next_element_to_fill = 0;
 buf->bytes = 0;
 atomic_set(&buf->state, QETH_QDIO_BUF_EMPTY);
}
