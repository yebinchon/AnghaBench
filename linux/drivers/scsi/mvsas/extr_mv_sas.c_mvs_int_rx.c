
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mvs_info {int rx_cons; int * rx; } ;
struct TYPE_2__ {int (* rx_update ) (struct mvs_info*) ;int (* int_full ) (struct mvs_info*) ;} ;


 TYPE_1__* MVS_CHIP_DISP ;
 int MVS_RX_RING_SZ ;
 int RXQ_ATTN ;
 int RXQ_DONE ;
 int RXQ_ERR ;
 int RXQ_SLOT_RESET ;
 int RX_RING_SZ_MASK ;
 void* le32_to_cpu (int ) ;
 scalar_t__ likely (int) ;
 int mvs_slot_complete (struct mvs_info*,int,int ) ;
 int mvs_slot_free (struct mvs_info*,int) ;
 int stub1 (struct mvs_info*) ;
 int stub2 (struct mvs_info*) ;
 scalar_t__ unlikely (int) ;

int mvs_int_rx(struct mvs_info *mvi, bool self_clear)
{
 u32 rx_prod_idx, rx_desc;
 bool attn = 0;






 rx_prod_idx = mvi->rx_cons;
 mvi->rx_cons = le32_to_cpu(mvi->rx[0]);
 if (mvi->rx_cons == 0xfff)
  return 0;





 if (unlikely(mvi->rx_cons == rx_prod_idx))
  mvi->rx_cons = MVS_CHIP_DISP->rx_update(mvi) & RX_RING_SZ_MASK;

 if (mvi->rx_cons == rx_prod_idx)
  return 0;

 while (mvi->rx_cons != rx_prod_idx) {

  rx_prod_idx = (rx_prod_idx + 1) & (MVS_RX_RING_SZ - 1);
  rx_desc = le32_to_cpu(mvi->rx[rx_prod_idx + 1]);

  if (likely(rx_desc & RXQ_DONE))
   mvs_slot_complete(mvi, rx_desc, 0);
  if (rx_desc & RXQ_ATTN) {
   attn = 1;
  } else if (rx_desc & RXQ_ERR) {
   if (!(rx_desc & RXQ_DONE))
    mvs_slot_complete(mvi, rx_desc, 0);
  } else if (rx_desc & RXQ_SLOT_RESET) {
   mvs_slot_free(mvi, rx_desc);
  }
 }

 if (attn && self_clear)
  MVS_CHIP_DISP->int_full(mvi);
 return 0;
}
