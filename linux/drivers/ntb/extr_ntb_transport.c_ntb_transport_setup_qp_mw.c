
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ntb_transport_qp {unsigned int rx_max_frame; unsigned int rx_max_entry; unsigned int rx_alloc_entry; scalar_t__ tx_index; scalar_t__ tx_pkts; scalar_t__ rx_pkts; TYPE_1__* rx_buff; TYPE_1__* remote_rx_info; int rx_free_q; int ntb_rx_q_lock; scalar_t__ rx_index; } ;
struct ntb_transport_mw {TYPE_1__* virt_addr; scalar_t__ xlat_size; } ;
struct ntb_transport_ctx {unsigned int mw_count; unsigned int qp_count; struct ntb_transport_mw* mw_vec; struct ntb_dev* ndev; struct ntb_transport_qp* qp_vec; } ;
struct ntb_rx_info {int dummy; } ;
struct ntb_queue_entry {int entry; struct ntb_transport_qp* qp; } ;
struct ntb_payload_header {int dummy; } ;
struct ntb_dev {int dev; } ;
struct TYPE_2__ {int entry; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int QP_TO_MW (struct ntb_transport_ctx*,unsigned int) ;
 int dev_to_node (int *) ;
 struct ntb_queue_entry* kzalloc_node (int,int ,int) ;
 int memset (void*,int ,int) ;
 unsigned int min (int ,unsigned int) ;
 int ntb_list_add (int *,int *,int *) ;
 int transport_mtu ;

__attribute__((used)) static int ntb_transport_setup_qp_mw(struct ntb_transport_ctx *nt,
         unsigned int qp_num)
{
 struct ntb_transport_qp *qp = &nt->qp_vec[qp_num];
 struct ntb_transport_mw *mw;
 struct ntb_dev *ndev = nt->ndev;
 struct ntb_queue_entry *entry;
 unsigned int rx_size, num_qps_mw;
 unsigned int mw_num, mw_count, qp_count;
 unsigned int i;
 int node;

 mw_count = nt->mw_count;
 qp_count = nt->qp_count;

 mw_num = QP_TO_MW(nt, qp_num);
 mw = &nt->mw_vec[mw_num];

 if (!mw->virt_addr)
  return -ENOMEM;

 if (mw_num < qp_count % mw_count)
  num_qps_mw = qp_count / mw_count + 1;
 else
  num_qps_mw = qp_count / mw_count;

 rx_size = (unsigned int)mw->xlat_size / num_qps_mw;
 qp->rx_buff = mw->virt_addr + rx_size * (qp_num / mw_count);
 rx_size -= sizeof(struct ntb_rx_info);

 qp->remote_rx_info = qp->rx_buff + rx_size;


 qp->rx_max_frame = min(transport_mtu, rx_size / 2);
 qp->rx_max_entry = rx_size / qp->rx_max_frame;
 qp->rx_index = 0;






 node = dev_to_node(&ndev->dev);
 for (i = qp->rx_alloc_entry; i < qp->rx_max_entry; i++) {
  entry = kzalloc_node(sizeof(*entry), GFP_KERNEL, node);
  if (!entry)
   return -ENOMEM;

  entry->qp = qp;
  ntb_list_add(&qp->ntb_rx_q_lock, &entry->entry,
        &qp->rx_free_q);
  qp->rx_alloc_entry++;
 }

 qp->remote_rx_info->entry = qp->rx_max_entry - 1;


 for (i = 0; i < qp->rx_max_entry; i++) {
  void *offset = (qp->rx_buff + qp->rx_max_frame * (i + 1) -
    sizeof(struct ntb_payload_header));
  memset(offset, 0, sizeof(struct ntb_payload_header));
 }

 qp->rx_pkts = 0;
 qp->tx_pkts = 0;
 qp->tx_index = 0;

 return 0;
}
