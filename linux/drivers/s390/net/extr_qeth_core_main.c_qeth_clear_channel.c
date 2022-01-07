
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_channel {scalar_t__ state; int ccwdev; } ;
struct qeth_card {int wait_q; } ;


 scalar_t__ CH_STATE_DOWN ;
 scalar_t__ CH_STATE_STOPPED ;
 int ERESTARTSYS ;
 int ETIME ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_CLEAR_CHANNEL_PARM ;
 int QETH_TIMEOUT ;
 int ccw_device_clear (int ,int ) ;
 int get_ccwdev_lock (int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static int qeth_clear_channel(struct qeth_card *card,
         struct qeth_channel *channel)
{
 int rc;

 QETH_CARD_TEXT(card, 3, "clearch");
 spin_lock_irq(get_ccwdev_lock(channel->ccwdev));
 rc = ccw_device_clear(channel->ccwdev, QETH_CLEAR_CHANNEL_PARM);
 spin_unlock_irq(get_ccwdev_lock(channel->ccwdev));

 if (rc)
  return rc;
 rc = wait_event_interruptible_timeout(card->wait_q,
   channel->state == CH_STATE_STOPPED, QETH_TIMEOUT);
 if (rc == -ERESTARTSYS)
  return rc;
 if (channel->state != CH_STATE_STOPPED)
  return -ETIME;
 channel->state = CH_STATE_DOWN;
 return 0;
}
