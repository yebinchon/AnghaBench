
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct vnic_wq_buf {unsigned int index; struct vnic_wq_buf* next; int * desc; } ;
struct TYPE_2__ {unsigned int desc_count; int desc_size; scalar_t__ descs; } ;
struct vnic_wq {struct vnic_wq_buf** bufs; struct vnic_wq_buf* to_clean; struct vnic_wq_buf* to_use; TYPE_1__ ring; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 unsigned int VNIC_WQ_BUF_BLKS_NEEDED (unsigned int) ;
 int VNIC_WQ_BUF_BLK_SZ ;
 unsigned int VNIC_WQ_BUF_DFLT_BLK_ENTRIES ;
 struct vnic_wq_buf* kzalloc (int ,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int vnic_wq_alloc_bufs(struct vnic_wq *wq)
{
 struct vnic_wq_buf *buf;
 unsigned int i, j, count = wq->ring.desc_count;
 unsigned int blks = VNIC_WQ_BUF_BLKS_NEEDED(count);

 for (i = 0; i < blks; i++) {
  wq->bufs[i] = kzalloc(VNIC_WQ_BUF_BLK_SZ, GFP_ATOMIC);
  if (!wq->bufs[i]) {
   pr_err("Failed to alloc wq_bufs\n");

   return -ENOMEM;
  }
 }

 for (i = 0; i < blks; i++) {
  buf = wq->bufs[i];
  for (j = 0; j < VNIC_WQ_BUF_DFLT_BLK_ENTRIES; j++) {
   buf->index = i * VNIC_WQ_BUF_DFLT_BLK_ENTRIES + j;
   buf->desc = (u8 *)wq->ring.descs +
    wq->ring.desc_size * buf->index;
   if (buf->index + 1 == count) {
    buf->next = wq->bufs[0];
    break;
   } else if (j + 1 == VNIC_WQ_BUF_DFLT_BLK_ENTRIES) {
    buf->next = wq->bufs[i + 1];
   } else {
    buf->next = buf + 1;
    buf++;
   }
  }
 }

 wq->to_use = wq->to_clean = wq->bufs[0];

 return 0;
}
