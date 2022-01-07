
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pn533 {int poll_work; TYPE_1__* phy_ops; int dev; int poll_mod_count; int listen_timer; } ;
struct nfc_dev {int dummy; } ;
struct TYPE_2__ {int (* abort_cmd ) (struct pn533*,int ) ;} ;


 int GFP_KERNEL ;
 int del_timer (int *) ;
 int dev_dbg (int ,char*) ;
 int flush_delayed_work (int *) ;
 struct pn533* nfc_get_drvdata (struct nfc_dev*) ;
 int pn533_poll_reset_mod_list (struct pn533*) ;
 int stub1 (struct pn533*,int ) ;

__attribute__((used)) static void pn533_stop_poll(struct nfc_dev *nfc_dev)
{
 struct pn533 *dev = nfc_get_drvdata(nfc_dev);

 del_timer(&dev->listen_timer);

 if (!dev->poll_mod_count) {
  dev_dbg(dev->dev,
   "Polling operation was not running\n");
  return;
 }

 dev->phy_ops->abort_cmd(dev, GFP_KERNEL);
 flush_delayed_work(&dev->poll_work);
 pn533_poll_reset_mod_list(dev);
}
