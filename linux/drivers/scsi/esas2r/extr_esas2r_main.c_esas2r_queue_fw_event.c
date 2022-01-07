
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct esas2r_vda_ae {int vda_ae; int devfn; int bus_number; int signature; } ;
struct esas2r_fw_event_work {int type; int work; int list; struct esas2r_adapter* a; int * data; } ;
struct esas2r_adapter {int fw_event_lock; int fw_event_q; int fw_event_list; TYPE_2__* pcid; } ;
typedef enum fw_event_type { ____Placeholder_fw_event_type } fw_event_type ;
struct TYPE_4__ {int devfn; TYPE_1__* bus; } ;
struct TYPE_3__ {int number; } ;


 int ESAS2R_LOG_WARN ;
 int ESAS2R_VDA_EVENT_SIG ;
 int GFP_ATOMIC ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int esas2r_firmware_event_work ;
 int esas2r_log (int ,char*) ;
 int fw_event_vda_ae ;
 struct esas2r_fw_event_work* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int *,void*,int) ;
 int msecs_to_jiffies (int) ;
 int queue_delayed_work_on (int ,int ,int *,int ) ;
 int smp_processor_id () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void esas2r_queue_fw_event(struct esas2r_adapter *a,
      enum fw_event_type type,
      void *data,
      int data_sz)
{
 struct esas2r_fw_event_work *fw_event;
 unsigned long flags;

 fw_event = kzalloc(sizeof(struct esas2r_fw_event_work), GFP_ATOMIC);
 if (!fw_event) {
  esas2r_log(ESAS2R_LOG_WARN,
      "esas2r_queue_fw_event failed to alloc");
  return;
 }

 if (type == fw_event_vda_ae) {
  struct esas2r_vda_ae *ae =
   (struct esas2r_vda_ae *)fw_event->data;

  ae->signature = ESAS2R_VDA_EVENT_SIG;
  ae->bus_number = a->pcid->bus->number;
  ae->devfn = a->pcid->devfn;
  memcpy(&ae->vda_ae, data, sizeof(ae->vda_ae));
 } else {
  memcpy(fw_event->data, data, data_sz);
 }

 fw_event->type = type;
 fw_event->a = a;

 spin_lock_irqsave(&a->fw_event_lock, flags);
 list_add_tail(&fw_event->list, &a->fw_event_list);
 INIT_DELAYED_WORK(&fw_event->work, esas2r_firmware_event_work);
 queue_delayed_work_on(
  smp_processor_id(), a->fw_event_q, &fw_event->work,
  msecs_to_jiffies(1));
 spin_unlock_irqrestore(&a->fw_event_lock, flags);
}
