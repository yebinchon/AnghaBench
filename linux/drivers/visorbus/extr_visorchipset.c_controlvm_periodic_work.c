
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct controlvm_message {int dummy; } ;
struct TYPE_2__ {int controlvm_pending_msg_valid; scalar_t__ poll_jiffies; int periodic_controlvm_work; scalar_t__ most_recent_message_jiffies; struct controlvm_message controlvm_pending_msg; int controlvm_channel; } ;


 int CONTROLVM_MESSAGE_MAX ;
 int CONTROLVM_QUEUE_RESPONSE ;
 int EAGAIN ;
 int HZ ;
 int MIN_IDLE_SECONDS ;
 scalar_t__ POLLJIFFIES_CONTROLVM_FAST ;
 scalar_t__ POLLJIFFIES_CONTROLVM_SLOW ;
 TYPE_1__* chipset_dev ;
 int handle_command (struct controlvm_message,int ) ;
 scalar_t__ jiffies ;
 int parahotplug_process_list () ;
 int read_controlvm_event (struct controlvm_message*) ;
 int schedule_delayed_work (int *,scalar_t__) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 int visorchannel_get_physaddr (int ) ;
 int visorchannel_signalremove (int ,int ,struct controlvm_message*) ;

__attribute__((used)) static void controlvm_periodic_work(struct work_struct *work)
{
 struct controlvm_message inmsg;
 int count = 0;
 int err;


 do {
  err = visorchannel_signalremove(chipset_dev->controlvm_channel,
      CONTROLVM_QUEUE_RESPONSE,
      &inmsg);
 } while ((!err) && (++count < CONTROLVM_MESSAGE_MAX));
 if (err != -EAGAIN)
  goto schedule_out;
 if (chipset_dev->controlvm_pending_msg_valid) {




  inmsg = chipset_dev->controlvm_pending_msg;
  chipset_dev->controlvm_pending_msg_valid = 0;
  err = 0;
 } else {
  err = read_controlvm_event(&inmsg);
 }
 while (!err) {
  chipset_dev->most_recent_message_jiffies = jiffies;
  err = handle_command(inmsg,
         visorchannel_get_physaddr
         (chipset_dev->controlvm_channel));
  if (err == -EAGAIN) {
   chipset_dev->controlvm_pending_msg = inmsg;
   chipset_dev->controlvm_pending_msg_valid = 1;
   break;
  }

  err = read_controlvm_event(&inmsg);
 }

 parahotplug_process_list();






schedule_out:
 if (time_after(jiffies, chipset_dev->most_recent_message_jiffies +
    (HZ * MIN_IDLE_SECONDS))) {




  if (chipset_dev->poll_jiffies != POLLJIFFIES_CONTROLVM_SLOW)
   chipset_dev->poll_jiffies = POLLJIFFIES_CONTROLVM_SLOW;
 } else {
  if (chipset_dev->poll_jiffies != POLLJIFFIES_CONTROLVM_FAST)
   chipset_dev->poll_jiffies = POLLJIFFIES_CONTROLVM_FAST;
 }
 schedule_delayed_work(&chipset_dev->periodic_controlvm_work,
         chipset_dev->poll_jiffies);
}
