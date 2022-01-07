
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct rss_header {scalar_t__ opcode; } ;
struct csio_hw {int dummy; } ;
struct csio_fl_dma_buf {int totlen; } ;
struct cpl_fw6_msg {int dummy; } ;
struct cpl_fw4_msg {int dummy; } ;
typedef scalar_t__ __u8 ;
typedef int __be64 ;


 scalar_t__ CPL_FW4_MSG ;
 scalar_t__ CPL_FW6_MSG ;
 scalar_t__ CPL_FW6_PLD ;
 int CSIO_EVT_FW ;
 int CSIO_INC_STATS (struct csio_hw*,int ) ;
 scalar_t__ csio_enqueue_evt_lock (struct csio_hw*,int ,void*,int ,int) ;
 int csio_warn (struct csio_hw*,char*,scalar_t__) ;
 int n_cpl_fw6_msg ;
 int n_cpl_fw6_pld ;
 int n_cpl_unexp ;
 int n_evt_drop ;

__attribute__((used)) static void
csio_process_fwevtq_entry(struct csio_hw *hw, void *wr, uint32_t len,
     struct csio_fl_dma_buf *flb, void *priv)
{
 __u8 op;
 void *msg = ((void*)0);
 uint32_t msg_len = 0;
 bool msg_sg = 0;

 op = ((struct rss_header *) wr)->opcode;
 if (op == CPL_FW6_PLD) {
  CSIO_INC_STATS(hw, n_cpl_fw6_pld);
  if (!flb || !flb->totlen) {
   CSIO_INC_STATS(hw, n_cpl_unexp);
   return;
  }

  msg = (void *) flb;
  msg_len = flb->totlen;
  msg_sg = 1;
 } else if (op == CPL_FW6_MSG || op == CPL_FW4_MSG) {

  CSIO_INC_STATS(hw, n_cpl_fw6_msg);

  msg = (void *)((uintptr_t)wr + sizeof(__be64));
  msg_len = (op == CPL_FW6_MSG) ? sizeof(struct cpl_fw6_msg) :
      sizeof(struct cpl_fw4_msg);
 } else {
  csio_warn(hw, "unexpected CPL %#x on FW event queue\n", op);
  CSIO_INC_STATS(hw, n_cpl_unexp);
  return;
 }





 if (csio_enqueue_evt_lock(hw, CSIO_EVT_FW, msg,
      (uint16_t)msg_len, msg_sg))
  CSIO_INC_STATS(hw, n_evt_drop);
}
