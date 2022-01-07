
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wahc {size_t nep_buffer_size; int notifs_queued; int nep_buffer; TYPE_1__* usb_iface; } ;
struct wa_notif_work {size_t size; int work; int data; int wa; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int dev_err (struct device*,char*) ;
 struct wa_notif_work* kzalloc (int,int ) ;
 int memcpy (int ,int ,size_t) ;
 scalar_t__ printk_ratelimit () ;
 int queue_work (int ,int *) ;
 int wa_get (struct wahc*) ;
 int wa_notif_dispatch ;
 int wusbd ;

__attribute__((used)) static int wa_nep_queue(struct wahc *wa, size_t size)
{
 int result = 0;
 struct device *dev = &wa->usb_iface->dev;
 struct wa_notif_work *nw;


 BUG_ON(size > wa->nep_buffer_size);
 if (size == 0)
  goto out;
 if (atomic_read(&wa->notifs_queued) > 200) {
  if (printk_ratelimit())
   dev_err(dev, "Too many notifications queued, "
    "throttling back\n");
  goto out;
 }
 nw = kzalloc(sizeof(*nw) + size, GFP_ATOMIC);
 if (nw == ((void*)0)) {
  if (printk_ratelimit())
   dev_err(dev, "No memory to queue notification\n");
  result = -ENOMEM;
  goto out;
 }
 INIT_WORK(&nw->work, wa_notif_dispatch);
 nw->wa = wa_get(wa);
 nw->size = size;
 memcpy(nw->data, wa->nep_buffer, size);
 atomic_inc(&wa->notifs_queued);
 queue_work(wusbd, &nw->work);
out:

 return result;
}
