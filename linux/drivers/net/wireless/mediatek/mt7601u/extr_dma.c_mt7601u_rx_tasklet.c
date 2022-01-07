
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt7601u_dma_buf_rx {TYPE_1__* urb; } ;
struct mt7601u_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ status; } ;


 int GFP_ATOMIC ;
 struct mt7601u_dma_buf_rx* mt7601u_rx_get_pending_entry (struct mt7601u_dev*) ;
 int mt7601u_rx_process_entry (struct mt7601u_dev*,struct mt7601u_dma_buf_rx*) ;
 int mt7601u_submit_rx_buf (struct mt7601u_dev*,struct mt7601u_dma_buf_rx*,int ) ;

__attribute__((used)) static void mt7601u_rx_tasklet(unsigned long data)
{
 struct mt7601u_dev *dev = (struct mt7601u_dev *) data;
 struct mt7601u_dma_buf_rx *e;

 while ((e = mt7601u_rx_get_pending_entry(dev))) {
  if (e->urb->status)
   continue;

  mt7601u_rx_process_entry(dev, e);
  mt7601u_submit_rx_buf(dev, e, GFP_ATOMIC);
 }
}
