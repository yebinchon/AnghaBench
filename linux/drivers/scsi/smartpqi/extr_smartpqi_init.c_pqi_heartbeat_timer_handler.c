
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct timer_list {int dummy; } ;
struct pqi_ctrl_info {int previous_num_interrupts; scalar_t__ previous_heartbeat_count; int heartbeat_timer; TYPE_1__* pci_dev; int num_interrupts; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ PQI_HEARTBEAT_TIMER_INTERVAL ;
 int atomic_read (int *) ;
 struct pqi_ctrl_info* ctrl_info ;
 int dev_err (int *,char*,scalar_t__) ;
 struct pqi_ctrl_info* from_timer (int ,struct timer_list*,int ) ;
 int heartbeat_timer ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int pqi_check_ctrl_health (struct pqi_ctrl_info*) ;
 scalar_t__ pqi_ctrl_offline (struct pqi_ctrl_info*) ;
 scalar_t__ pqi_read_heartbeat_counter (struct pqi_ctrl_info*) ;
 int pqi_take_ctrl_offline (struct pqi_ctrl_info*) ;

__attribute__((used)) static void pqi_heartbeat_timer_handler(struct timer_list *t)
{
 int num_interrupts;
 u32 heartbeat_count;
 struct pqi_ctrl_info *ctrl_info = from_timer(ctrl_info, t,
           heartbeat_timer);

 pqi_check_ctrl_health(ctrl_info);
 if (pqi_ctrl_offline(ctrl_info))
  return;

 num_interrupts = atomic_read(&ctrl_info->num_interrupts);
 heartbeat_count = pqi_read_heartbeat_counter(ctrl_info);

 if (num_interrupts == ctrl_info->previous_num_interrupts) {
  if (heartbeat_count == ctrl_info->previous_heartbeat_count) {
   dev_err(&ctrl_info->pci_dev->dev,
    "no heartbeat detected - last heartbeat count: %u\n",
    heartbeat_count);
   pqi_take_ctrl_offline(ctrl_info);
   return;
  }
 } else {
  ctrl_info->previous_num_interrupts = num_interrupts;
 }

 ctrl_info->previous_heartbeat_count = heartbeat_count;
 mod_timer(&ctrl_info->heartbeat_timer,
  jiffies + PQI_HEARTBEAT_TIMER_INTERVAL);
}
