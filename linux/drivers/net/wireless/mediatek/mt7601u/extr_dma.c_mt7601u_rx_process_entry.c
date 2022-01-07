
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct page {int dummy; } ;
struct mt7601u_dma_buf_rx {struct page* p; TYPE_1__* urb; } ;
struct mt7601u_dev {int state; } ;
struct TYPE_2__ {int actual_length; } ;


 int MT7601U_STATE_INITIALIZED ;
 int MT_RX_ORDER ;
 int __free_pages (struct page*,int ) ;
 struct page* dev_alloc_pages (int ) ;
 int mt7601u_rx_next_seg_len (int *,int) ;
 int mt7601u_rx_process_seg (struct mt7601u_dev*,int *,int,struct page*) ;
 int * page_address (struct page*) ;
 int test_bit (int ,int *) ;
 int trace_mt_rx_dma_aggr (struct mt7601u_dev*,int,int) ;

__attribute__((used)) static void
mt7601u_rx_process_entry(struct mt7601u_dev *dev, struct mt7601u_dma_buf_rx *e)
{
 u32 seg_len, data_len = e->urb->actual_length;
 u8 *data = page_address(e->p);
 struct page *new_p = ((void*)0);
 int cnt = 0;

 if (!test_bit(MT7601U_STATE_INITIALIZED, &dev->state))
  return;


 if (data_len > 512)
  new_p = dev_alloc_pages(MT_RX_ORDER);

 while ((seg_len = mt7601u_rx_next_seg_len(data, data_len))) {
  mt7601u_rx_process_seg(dev, data, seg_len, new_p ? e->p : ((void*)0));

  data_len -= seg_len;
  data += seg_len;
  cnt++;
 }

 if (cnt > 1)
  trace_mt_rx_dma_aggr(dev, cnt, !!new_p);

 if (new_p) {

  __free_pages(e->p, MT_RX_ORDER);

  e->p = new_p;
 }
}
