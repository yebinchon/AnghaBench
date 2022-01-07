
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {scalar_t__ int_msg_num; scalar_t__ oq_id; } ;
struct pqi_ctrl_info {unsigned int num_queue_groups; TYPE_2__* queue_groups; TYPE_1__ event_queue; } ;
struct TYPE_4__ {unsigned int int_msg_num; int * request_list; int * submit_lock; scalar_t__ oq_id; scalar_t__* iq_id; struct pqi_ctrl_info* ctrl_info; } ;


 size_t AIO_PATH ;
 int INIT_LIST_HEAD (int *) ;
 int PQI_MIN_OPERATIONAL_QUEUE_ID ;
 size_t RAID_PATH ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void pqi_init_operational_queues(struct pqi_ctrl_info *ctrl_info)
{
 unsigned int i;
 u16 next_iq_id = PQI_MIN_OPERATIONAL_QUEUE_ID;
 u16 next_oq_id = PQI_MIN_OPERATIONAL_QUEUE_ID;





 for (i = 0; i < ctrl_info->num_queue_groups; i++)
  ctrl_info->queue_groups[i].ctrl_info = ctrl_info;






 ctrl_info->event_queue.oq_id = next_oq_id++;
 for (i = 0; i < ctrl_info->num_queue_groups; i++) {
  ctrl_info->queue_groups[i].iq_id[RAID_PATH] = next_iq_id++;
  ctrl_info->queue_groups[i].iq_id[AIO_PATH] = next_iq_id++;
  ctrl_info->queue_groups[i].oq_id = next_oq_id++;
 }





 ctrl_info->event_queue.int_msg_num = 0;
 for (i = 0; i < ctrl_info->num_queue_groups; i++)
  ctrl_info->queue_groups[i].int_msg_num = i;

 for (i = 0; i < ctrl_info->num_queue_groups; i++) {
  spin_lock_init(&ctrl_info->queue_groups[i].submit_lock[0]);
  spin_lock_init(&ctrl_info->queue_groups[i].submit_lock[1]);
  INIT_LIST_HEAD(&ctrl_info->queue_groups[i].request_list[0]);
  INIT_LIST_HEAD(&ctrl_info->queue_groups[i].request_list[1]);
 }
}
