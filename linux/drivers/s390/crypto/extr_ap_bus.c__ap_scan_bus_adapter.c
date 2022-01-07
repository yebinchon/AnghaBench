
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {struct device* parent; int * bus; } ;
struct TYPE_3__ {struct device device; } ;
struct ap_queue {scalar_t__ state; TYPE_1__ ap_dev; struct ap_card* card; int lock; } ;
struct TYPE_4__ {struct device device; } ;
struct ap_card {int raw_hwtype; unsigned int functions; TYPE_2__ ap_dev; } ;
typedef scalar_t__ ap_qid_t ;


 int AP_DBF (int ,char*,int,...) ;
 int AP_DOMAINS ;
 scalar_t__ AP_MKQID (int,int) ;
 scalar_t__ AP_STATE_BORKED ;
 int DBF_DEBUG ;
 int DBF_INFO ;
 int ENODEV ;
 int __ap_queue_devices_with_id_unregister ;
 int __match_card_device_with_id ;
 int __match_queue_device_with_qid ;
 int ap_bus_type ;
 struct ap_card* ap_card_create (int,int,int,int,unsigned int) ;
 int ap_get_compatible_type (scalar_t__,int,unsigned int) ;
 int ap_query_queue (scalar_t__,int*,int*,unsigned int*) ;
 struct ap_queue* ap_queue_create (scalar_t__,int) ;
 struct device* ap_root_device ;
 int ap_test_config_card_id (int) ;
 int ap_test_config_usage_domain (int) ;
 struct device* bus_find_device (int *,int *,void*,int ) ;
 int bus_for_each_dev (int *,int *,void*,int ) ;
 int dev_set_name (struct device*,char*,int,...) ;
 int device_register (struct device*) ;
 int device_unregister (struct device*) ;
 int get_device (struct device*) ;
 int put_device (struct device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct ap_card* to_ap_card (struct device*) ;
 struct ap_queue* to_ap_queue (struct device*) ;

__attribute__((used)) static void _ap_scan_bus_adapter(int id)
{
 ap_qid_t qid;
 unsigned int func;
 struct ap_card *ac;
 struct device *dev;
 struct ap_queue *aq;
 int rc, dom, depth, type, comp_type, borked;


 dev = bus_find_device(&ap_bus_type, ((void*)0),
         (void *)(long) id,
         __match_card_device_with_id);
 ac = dev ? to_ap_card(dev) : ((void*)0);
 if (!ap_test_config_card_id(id)) {
  if (dev) {

   bus_for_each_dev(&ap_bus_type, ((void*)0),
      (void *)(long) id,
      __ap_queue_devices_with_id_unregister);
   device_unregister(dev);
   put_device(dev);
  }
  return;
 }






 if (ac) {

  for (dom = 0; dom < AP_DOMAINS; dom++) {
   qid = AP_MKQID(id, dom);
   if (ap_query_queue(qid, &depth, &type, &func) == 0)
    break;
  }
  borked = 0;
  if (dom >= AP_DOMAINS) {

   borked = 1;
  } else if (ac->raw_hwtype != type) {

   AP_DBF(DBF_INFO, "card=%02x type changed.\n", id);
   borked = 1;
  } else if (ac->functions != func) {

   AP_DBF(DBF_INFO, "card=%02x functions changed.\n", id);
   borked = 1;
  }
  if (borked) {

   bus_for_each_dev(&ap_bus_type, ((void*)0),
      (void *)(long) id,
      __ap_queue_devices_with_id_unregister);
   device_unregister(dev);
   put_device(dev);

   if (dom >= AP_DOMAINS)
    return;
   ac = ((void*)0);
  }
 }






 for (dom = 0; dom < AP_DOMAINS; dom++) {
  qid = AP_MKQID(id, dom);
  dev = bus_find_device(&ap_bus_type, ((void*)0),
          (void *)(long) qid,
          __match_queue_device_with_qid);
  aq = dev ? to_ap_queue(dev) : ((void*)0);
  if (!ap_test_config_usage_domain(dom)) {
   if (dev) {



    device_unregister(dev);
    put_device(dev);
   }
   continue;
  }

  rc = ap_query_queue(qid, &depth, &type, &func);
  if (dev) {
   if (rc == -ENODEV)
    borked = 1;
   else {
    spin_lock_bh(&aq->lock);
    borked = aq->state == AP_STATE_BORKED;
    spin_unlock_bh(&aq->lock);
   }
   if (borked) {

    AP_DBF(DBF_DEBUG,
           "removing broken queue=%02x.%04x\n",
           id, dom);
    device_unregister(dev);
   }
   put_device(dev);
   continue;
  }
  if (rc)
   continue;

  comp_type = ap_get_compatible_type(qid, type, func);
  if (!comp_type)
   continue;

  if (!ac) {
   ac = ap_card_create(id, depth, type, comp_type, func);
   if (!ac)
    continue;
   ac->ap_dev.device.bus = &ap_bus_type;
   ac->ap_dev.device.parent = ap_root_device;
   dev_set_name(&ac->ap_dev.device, "card%02x", id);

   rc = device_register(&ac->ap_dev.device);
   if (rc) {
    put_device(&ac->ap_dev.device);
    ac = ((void*)0);
    break;
   }

   get_device(&ac->ap_dev.device);
  }

  aq = ap_queue_create(qid, comp_type);
  if (!aq)
   continue;
  aq->card = ac;
  aq->ap_dev.device.bus = &ap_bus_type;
  aq->ap_dev.device.parent = &ac->ap_dev.device;
  dev_set_name(&aq->ap_dev.device, "%02x.%04x", id, dom);

  rc = device_register(&aq->ap_dev.device);
  if (rc) {
   put_device(&aq->ap_dev.device);
   continue;
  }
 }

 if (ac)
  put_device(&ac->ap_dev.device);
}
