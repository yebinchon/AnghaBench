
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device {int driver; } ;
struct TYPE_6__ {int aqm; int apm; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int qid; } ;


 int AP_DBF (int ,char*,int,int) ;
 int AP_DRIVER_FLAG_DEFAULT ;
 int AP_QID_CARD (int ) ;
 int AP_QID_QUEUE (int ) ;
 int DBF_DEBUG ;
 TYPE_3__ ap_perms ;
 int ap_perms_mutex ;
 int device_reprobe (struct device*) ;
 scalar_t__ is_queue_dev (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_bit_inv (int,int ) ;
 TYPE_2__* to_ap_drv (int ) ;
 TYPE_1__* to_ap_queue (struct device*) ;

__attribute__((used)) static int __ap_revise_reserved(struct device *dev, void *dummy)
{
 int rc, card, queue, devres, drvres;

 if (is_queue_dev(dev)) {
  card = AP_QID_CARD(to_ap_queue(dev)->qid);
  queue = AP_QID_QUEUE(to_ap_queue(dev)->qid);
  mutex_lock(&ap_perms_mutex);
  devres = test_bit_inv(card, ap_perms.apm)
   && test_bit_inv(queue, ap_perms.aqm);
  mutex_unlock(&ap_perms_mutex);
  drvres = to_ap_drv(dev->driver)->flags
   & AP_DRIVER_FLAG_DEFAULT;
  if (!!devres != !!drvres) {
   AP_DBF(DBF_DEBUG, "reprobing queue=%02x.%04x\n",
          card, queue);
   rc = device_reprobe(dev);
  }
 }

 return 0;
}
