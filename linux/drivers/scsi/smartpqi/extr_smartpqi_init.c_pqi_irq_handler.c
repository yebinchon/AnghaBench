
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_queue_group {struct pqi_ctrl_info* ctrl_info; } ;
struct pqi_ctrl_info {int event_irq; int num_interrupts; } ;
typedef int irqreturn_t ;


 int AIO_PATH ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int RAID_PATH ;
 int atomic_inc (int *) ;
 int pqi_is_valid_irq (struct pqi_ctrl_info*) ;
 scalar_t__ pqi_process_event_intr (struct pqi_ctrl_info*) ;
 unsigned int pqi_process_io_intr (struct pqi_ctrl_info*,struct pqi_queue_group*) ;
 int pqi_start_io (struct pqi_ctrl_info*,struct pqi_queue_group*,int ,int *) ;

__attribute__((used)) static irqreturn_t pqi_irq_handler(int irq, void *data)
{
 struct pqi_ctrl_info *ctrl_info;
 struct pqi_queue_group *queue_group;
 unsigned int num_responses_handled;

 queue_group = data;
 ctrl_info = queue_group->ctrl_info;

 if (!pqi_is_valid_irq(ctrl_info))
  return IRQ_NONE;

 num_responses_handled = pqi_process_io_intr(ctrl_info, queue_group);

 if (irq == ctrl_info->event_irq)
  num_responses_handled += pqi_process_event_intr(ctrl_info);

 if (num_responses_handled)
  atomic_inc(&ctrl_info->num_interrupts);

 pqi_start_io(ctrl_info, queue_group, RAID_PATH, ((void*)0));
 pqi_start_io(ctrl_info, queue_group, AIO_PATH, ((void*)0));

 return IRQ_HANDLED;
}
