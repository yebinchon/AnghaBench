
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct pn533 {int cancel_listen; int poll_work; int wq; int dev; } ;


 int PN533_POLL_INTERVAL ;
 struct pn533* dev ;
 int dev_dbg (int ,char*) ;
 struct pn533* from_timer (int ,struct timer_list*,int ) ;
 int listen_timer ;
 int msecs_to_jiffies (int ) ;
 int pn533_poll_next_mod (struct pn533*) ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static void pn533_listen_mode_timer(struct timer_list *t)
{
 struct pn533 *dev = from_timer(dev, t, listen_timer);

 dev_dbg(dev->dev, "Listen mode timeout\n");

 dev->cancel_listen = 1;

 pn533_poll_next_mod(dev);

 queue_delayed_work(dev->wq, &dev->poll_work,
      msecs_to_jiffies(PN533_POLL_INTERVAL));
}
