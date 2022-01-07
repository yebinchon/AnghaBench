
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ntb_transport_qp {int rx_max_frame; int rx_index; int qp_num; int rx_bytes; int rx_max_entry; scalar_t__ rx_pkts; TYPE_2__* ndev; int rx_err_oflow; int rx_err_no_buf; int rx_post_q; int rx_pend_q; int ntb_rx_q_lock; int rx_err_ver; int rx_ring_empty; void* rx_buff; } ;
struct ntb_queue_entry {int rx_index; int len; int flags; struct ntb_payload_header* rx_hdr; } ;
struct ntb_payload_header {scalar_t__ ver; int len; int flags; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int DESC_DONE_FLAG ;
 int EAGAIN ;
 int EIO ;
 int LINK_DOWN_FLAG ;
 int dev_dbg (int *,char*,...) ;
 int ntb_async_rx (struct ntb_queue_entry*,void*) ;
 int ntb_complete_rxc (struct ntb_transport_qp*) ;
 struct ntb_queue_entry* ntb_list_mv (int *,int *,int *) ;
 int ntb_qp_link_down (struct ntb_transport_qp*) ;

__attribute__((used)) static int ntb_process_rxc(struct ntb_transport_qp *qp)
{
 struct ntb_payload_header *hdr;
 struct ntb_queue_entry *entry;
 void *offset;

 offset = qp->rx_buff + qp->rx_max_frame * qp->rx_index;
 hdr = offset + qp->rx_max_frame - sizeof(struct ntb_payload_header);

 dev_dbg(&qp->ndev->pdev->dev, "qp %d: RX ver %u len %d flags %x\n",
  qp->qp_num, hdr->ver, hdr->len, hdr->flags);

 if (!(hdr->flags & DESC_DONE_FLAG)) {
  dev_dbg(&qp->ndev->pdev->dev, "done flag not set\n");
  qp->rx_ring_empty++;
  return -EAGAIN;
 }

 if (hdr->flags & LINK_DOWN_FLAG) {
  dev_dbg(&qp->ndev->pdev->dev, "link down flag set\n");
  ntb_qp_link_down(qp);
  hdr->flags = 0;
  return -EAGAIN;
 }

 if (hdr->ver != (u32)qp->rx_pkts) {
  dev_dbg(&qp->ndev->pdev->dev,
   "version mismatch, expected %llu - got %u\n",
   qp->rx_pkts, hdr->ver);
  qp->rx_err_ver++;
  return -EIO;
 }

 entry = ntb_list_mv(&qp->ntb_rx_q_lock, &qp->rx_pend_q, &qp->rx_post_q);
 if (!entry) {
  dev_dbg(&qp->ndev->pdev->dev, "no receive buffer\n");
  qp->rx_err_no_buf++;
  return -EAGAIN;
 }

 entry->rx_hdr = hdr;
 entry->rx_index = qp->rx_index;

 if (hdr->len > entry->len) {
  dev_dbg(&qp->ndev->pdev->dev,
   "receive buffer overflow! Wanted %d got %d\n",
   hdr->len, entry->len);
  qp->rx_err_oflow++;

  entry->len = -EIO;
  entry->flags |= DESC_DONE_FLAG;

  ntb_complete_rxc(qp);
 } else {
  dev_dbg(&qp->ndev->pdev->dev,
   "RX OK index %u ver %u size %d into buf size %d\n",
   qp->rx_index, hdr->ver, hdr->len, entry->len);

  qp->rx_bytes += hdr->len;
  qp->rx_pkts++;

  entry->len = hdr->len;

  ntb_async_rx(entry, offset);
 }

 qp->rx_index++;
 qp->rx_index %= qp->rx_max_entry;

 return 0;
}
