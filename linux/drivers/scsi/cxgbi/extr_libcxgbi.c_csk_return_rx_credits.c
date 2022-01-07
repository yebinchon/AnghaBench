
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cxgbi_sock {scalar_t__ state; scalar_t__ copied_seq; scalar_t__ rcv_wup; scalar_t__ rcv_win; int tid; int flags; struct cxgbi_device* cdev; } ;
struct cxgbi_device {scalar_t__ rx_credit_thres; scalar_t__ (* csk_send_rx_credits ) (struct cxgbi_sock*,scalar_t__) ;} ;


 scalar_t__ CTP_ESTABLISHED ;
 int CXGBI_DBG_PDU_RX ;
 int log_debug (int,char*,struct cxgbi_sock*,scalar_t__,int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ stub1 (struct cxgbi_sock*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void csk_return_rx_credits(struct cxgbi_sock *csk, int copied)
{
 struct cxgbi_device *cdev = csk->cdev;
 int must_send;
 u32 credits;

 log_debug(1 << CXGBI_DBG_PDU_RX,
  "csk 0x%p,%u,0x%lx,%u, seq %u, wup %u, thre %u, %u.\n",
  csk, csk->state, csk->flags, csk->tid, csk->copied_seq,
  csk->rcv_wup, cdev->rx_credit_thres,
  csk->rcv_win);

 if (!cdev->rx_credit_thres)
  return;

 if (csk->state != CTP_ESTABLISHED)
  return;

 credits = csk->copied_seq - csk->rcv_wup;
 if (unlikely(!credits))
  return;
 must_send = credits + 16384 >= csk->rcv_win;
 if (must_send || credits >= cdev->rx_credit_thres)
  csk->rcv_wup += cdev->csk_send_rx_credits(csk, credits);
}
