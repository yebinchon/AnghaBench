
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct most_interface {int dummy; } ;
struct mbo {int (* complete ) (struct mbo*) ;int status; scalar_t__ processed_length; int list; } ;
struct TYPE_4__ {int list; int dwork; } ;
struct hdm_i2c {TYPE_2__ rx; TYPE_1__* client; } ;
struct TYPE_3__ {int irq; } ;


 int BUG_ON (int) ;
 int CH_RX ;
 int MBO_E_CLOSE ;
 int NUM_CHANNELS ;
 int cancel_delayed_work_sync (int *) ;
 int free_irq (int ,struct hdm_i2c*) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 struct mbo* list_first_mbo (int *) ;
 int polling_rate ;
 int stub1 (struct mbo*) ;
 struct hdm_i2c* to_hdm (struct most_interface*) ;

__attribute__((used)) static int poison_channel(struct most_interface *most_iface,
     int ch_idx)
{
 struct hdm_i2c *dev = to_hdm(most_iface);
 struct mbo *mbo;

 BUG_ON(ch_idx < 0 || ch_idx >= NUM_CHANNELS);

 if (ch_idx == CH_RX) {
  if (!polling_rate)
   free_irq(dev->client->irq, dev);
  cancel_delayed_work_sync(&dev->rx.dwork);

  while (!list_empty(&dev->rx.list)) {
   mbo = list_first_mbo(&dev->rx.list);
   list_del(&mbo->list);

   mbo->processed_length = 0;
   mbo->status = MBO_E_CLOSE;
   mbo->complete(mbo);
  }
 }

 return 0;
}
