
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pqi_queue_group {int* iq_pi_copy; int * submit_lock; int * iq_pi; void** iq_element_array; int * iq_ci; int oq_id; } ;
struct TYPE_2__ {int response_queue_id; } ;
struct pqi_event_acknowledge_request {TYPE_1__ header; } ;
struct pqi_ctrl_info {int num_elements_per_iq; struct pqi_queue_group* queue_groups; } ;
typedef int pqi_index_t ;


 size_t PQI_DEFAULT_QUEUE_GROUP ;
 int PQI_OPERATIONAL_IQ_ELEMENT_LENGTH ;
 size_t RAID_PATH ;
 int memcpy (void*,struct pqi_event_acknowledge_request*,size_t) ;
 scalar_t__ pqi_ctrl_offline (struct pqi_ctrl_info*) ;
 scalar_t__ pqi_num_elements_free (int,int,int) ;
 int put_unaligned_le16 (int ,int *) ;
 int readl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,int ) ;

__attribute__((used)) static void pqi_send_event_ack(struct pqi_ctrl_info *ctrl_info,
 struct pqi_event_acknowledge_request *iu, size_t iu_length)
{
 pqi_index_t iq_pi;
 pqi_index_t iq_ci;
 unsigned long flags;
 void *next_element;
 struct pqi_queue_group *queue_group;

 queue_group = &ctrl_info->queue_groups[PQI_DEFAULT_QUEUE_GROUP];
 put_unaligned_le16(queue_group->oq_id, &iu->header.response_queue_id);

 while (1) {
  spin_lock_irqsave(&queue_group->submit_lock[RAID_PATH], flags);

  iq_pi = queue_group->iq_pi_copy[RAID_PATH];
  iq_ci = readl(queue_group->iq_ci[RAID_PATH]);

  if (pqi_num_elements_free(iq_pi, iq_ci,
   ctrl_info->num_elements_per_iq))
   break;

  spin_unlock_irqrestore(
   &queue_group->submit_lock[RAID_PATH], flags);

  if (pqi_ctrl_offline(ctrl_info))
   return;
 }

 next_element = queue_group->iq_element_array[RAID_PATH] +
  (iq_pi * PQI_OPERATIONAL_IQ_ELEMENT_LENGTH);

 memcpy(next_element, iu, iu_length);

 iq_pi = (iq_pi + 1) % ctrl_info->num_elements_per_iq;
 queue_group->iq_pi_copy[RAID_PATH] = iq_pi;





 writel(iq_pi, queue_group->iq_pi[RAID_PATH]);

 spin_unlock_irqrestore(&queue_group->submit_lock[RAID_PATH], flags);
}
