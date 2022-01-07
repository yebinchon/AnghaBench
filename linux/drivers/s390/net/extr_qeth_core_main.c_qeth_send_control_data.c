
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_reply {int (* callback ) (struct qeth_card*,struct qeth_reply*,unsigned long) ;void* param; } ;
struct qeth_cmd_buffer {long timeout; int rc; int lock; int done; int length; int data; int (* finalize ) (struct qeth_card*,struct qeth_cmd_buffer*) ;struct qeth_reply reply; struct qeth_channel* channel; } ;
struct qeth_channel {int irq_pending; int ccwdev; } ;
struct qeth_card {int wait_q; } ;
typedef int addr_t ;


 int CARD_DEVID (struct qeth_card*) ;
 int CTRL ;
 int EINTR ;
 long ERESTARTSYS ;
 int ETIME ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,int) ;
 int QETH_DBF_CTRL_LEN ;
 int QETH_DBF_HEX (int ,int,int ,int ) ;
 int QETH_DBF_MESSAGE (int,char*,int ,int) ;
 int __ccw_from_cmd (struct qeth_cmd_buffer*) ;
 int atomic_set (int *,int ) ;
 int ccw_device_start_timeout (int ,int ,int ,int ,int ,long) ;
 int * get_ccwdev_lock (int ) ;
 int min (int ,int ) ;
 int qeth_dequeue_cmd (struct qeth_card*,struct qeth_cmd_buffer*) ;
 int qeth_enqueue_cmd (struct qeth_card*,struct qeth_cmd_buffer*) ;
 int qeth_get_cmd (struct qeth_cmd_buffer*) ;
 int qeth_put_cmd (struct qeth_cmd_buffer*) ;
 int qeth_trylock_channel (struct qeth_channel*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct qeth_card*,struct qeth_cmd_buffer*) ;
 long wait_event_interruptible_timeout (int ,int ,long) ;
 long wait_for_completion_interruptible_timeout (int *,long) ;
 int wake_up (int *) ;

__attribute__((used)) static int qeth_send_control_data(struct qeth_card *card,
      struct qeth_cmd_buffer *iob,
      int (*reply_cb)(struct qeth_card *cb_card,
        struct qeth_reply *cb_reply,
        unsigned long cb_cmd),
      void *reply_param)
{
 struct qeth_channel *channel = iob->channel;
 struct qeth_reply *reply = &iob->reply;
 long timeout = iob->timeout;
 int rc;

 QETH_CARD_TEXT(card, 2, "sendctl");

 reply->callback = reply_cb;
 reply->param = reply_param;

 timeout = wait_event_interruptible_timeout(card->wait_q,
         qeth_trylock_channel(channel),
         timeout);
 if (timeout <= 0) {
  qeth_put_cmd(iob);
  return (timeout == -ERESTARTSYS) ? -EINTR : -ETIME;
 }

 if (iob->finalize)
  iob->finalize(card, iob);
 QETH_DBF_HEX(CTRL, 2, iob->data, min(iob->length, QETH_DBF_CTRL_LEN));

 qeth_enqueue_cmd(card, iob);


 qeth_get_cmd(iob);

 QETH_CARD_TEXT(card, 6, "noirqpnd");
 spin_lock_irq(get_ccwdev_lock(channel->ccwdev));
 rc = ccw_device_start_timeout(channel->ccwdev, __ccw_from_cmd(iob),
          (addr_t) iob, 0, 0, timeout);
 spin_unlock_irq(get_ccwdev_lock(channel->ccwdev));
 if (rc) {
  QETH_DBF_MESSAGE(2, "qeth_send_control_data on device %x: ccw_device_start rc = %i\n",
     CARD_DEVID(card), rc);
  QETH_CARD_TEXT_(card, 2, " err%d", rc);
  qeth_dequeue_cmd(card, iob);
  qeth_put_cmd(iob);
  atomic_set(&channel->irq_pending, 0);
  wake_up(&card->wait_q);
  goto out;
 }

 timeout = wait_for_completion_interruptible_timeout(&iob->done,
           timeout);
 if (timeout <= 0)
  rc = (timeout == -ERESTARTSYS) ? -EINTR : -ETIME;

 qeth_dequeue_cmd(card, iob);

 if (reply_cb) {

  spin_lock_irq(&iob->lock);
  if (rc)

   iob->rc = rc;
  spin_unlock_irq(&iob->lock);
 }

 if (!rc)
  rc = iob->rc;

out:
 qeth_put_cmd(iob);
 return rc;
}
