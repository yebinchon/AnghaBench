
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qcom_glink {int tx_lock; int mbox_chan; TYPE_1__* tx_pipe; } ;
struct TYPE_2__ {unsigned int length; } ;


 int EAGAIN ;
 int EINVAL ;
 int mbox_client_txdone (int ,int ) ;
 int mbox_send_message (int ,int *) ;
 unsigned int qcom_glink_tx_avail (struct qcom_glink*) ;
 int qcom_glink_tx_write (struct qcom_glink*,void const*,size_t,void const*,size_t) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int qcom_glink_tx(struct qcom_glink *glink,
    const void *hdr, size_t hlen,
    const void *data, size_t dlen, bool wait)
{
 unsigned int tlen = hlen + dlen;
 unsigned long flags;
 int ret = 0;


 if (tlen >= glink->tx_pipe->length)
  return -EINVAL;

 spin_lock_irqsave(&glink->tx_lock, flags);

 while (qcom_glink_tx_avail(glink) < tlen) {
  if (!wait) {
   ret = -EAGAIN;
   goto out;
  }


  spin_unlock_irqrestore(&glink->tx_lock, flags);

  usleep_range(10000, 15000);

  spin_lock_irqsave(&glink->tx_lock, flags);
 }

 qcom_glink_tx_write(glink, hdr, hlen, data, dlen);

 mbox_send_message(glink->mbox_chan, ((void*)0));
 mbox_client_txdone(glink->mbox_chan, 0);

out:
 spin_unlock_irqrestore(&glink->tx_lock, flags);

 return ret;
}
