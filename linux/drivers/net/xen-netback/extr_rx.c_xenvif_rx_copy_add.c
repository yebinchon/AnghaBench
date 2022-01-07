
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ num; int * idx; struct gnttab_copy* op; } ;
struct TYPE_13__ {int req_cons; } ;
struct xenvif_queue {TYPE_7__ rx_copy; TYPE_6__ rx; TYPE_4__* vif; } ;
struct xen_page_foreign {int gref; int domid; } ;
struct xen_netif_rx_request {int gref; } ;
struct page {int dummy; } ;
struct TYPE_10__ {int ref; } ;
struct TYPE_12__ {unsigned int offset; int domid; TYPE_3__ u; } ;
struct TYPE_8__ {int gmfn; int ref; } ;
struct TYPE_9__ {int offset; int domid; TYPE_1__ u; } ;
struct gnttab_copy {size_t len; TYPE_5__ dest; TYPE_2__ source; int flags; } ;
struct TYPE_11__ {int domid; } ;


 scalar_t__ COPY_BATCH_SIZE ;
 int DOMID_SELF ;
 int GNTCOPY_dest_gref ;
 int GNTCOPY_source_gref ;
 int virt_to_gfn (void*) ;
 struct page* virt_to_page (void*) ;
 int xen_offset_in_page (void*) ;
 struct xen_page_foreign* xen_page_foreign (struct page*) ;
 int xenvif_rx_copy_flush (struct xenvif_queue*) ;

__attribute__((used)) static void xenvif_rx_copy_add(struct xenvif_queue *queue,
          struct xen_netif_rx_request *req,
          unsigned int offset, void *data, size_t len)
{
 struct gnttab_copy *op;
 struct page *page;
 struct xen_page_foreign *foreign;

 if (queue->rx_copy.num == COPY_BATCH_SIZE)
  xenvif_rx_copy_flush(queue);

 op = &queue->rx_copy.op[queue->rx_copy.num];

 page = virt_to_page(data);

 op->flags = GNTCOPY_dest_gref;

 foreign = xen_page_foreign(page);
 if (foreign) {
  op->source.domid = foreign->domid;
  op->source.u.ref = foreign->gref;
  op->flags |= GNTCOPY_source_gref;
 } else {
  op->source.u.gmfn = virt_to_gfn(data);
  op->source.domid = DOMID_SELF;
 }

 op->source.offset = xen_offset_in_page(data);
 op->dest.u.ref = req->gref;
 op->dest.domid = queue->vif->domid;
 op->dest.offset = offset;
 op->len = len;

 queue->rx_copy.idx[queue->rx_copy.num] = queue->rx.req_cons;
 queue->rx_copy.num++;
}
