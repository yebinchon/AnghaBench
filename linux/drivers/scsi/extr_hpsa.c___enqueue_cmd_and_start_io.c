
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* submit_command ) (struct ctlr_info*,struct CommandList*) ;} ;
struct ctlr_info {int* reply_map; TYPE_2__ access; scalar_t__ vaddr; int commands_outstanding; } ;
struct CommandList {int cmd_type; int busaddr; TYPE_1__* device; } ;
struct TYPE_3__ {int commands_outstanding; } ;




 scalar_t__ IOACCEL2_INBOUND_POSTQ_32 ;

 scalar_t__ SA5_REQUEST_PORT_OFFSET ;
 int atomic_inc (int *) ;
 int dial_down_lockup_detection_during_fw_flash (struct ctlr_info*,struct CommandList*) ;
 size_t raw_smp_processor_id () ;
 int set_ioaccel1_performant_mode (struct ctlr_info*,struct CommandList*,int) ;
 int set_ioaccel2_performant_mode (struct ctlr_info*,struct CommandList*,int) ;
 int set_ioaccel2_tmf_performant_mode (struct ctlr_info*,struct CommandList*,int) ;
 int set_performant_mode (struct ctlr_info*,struct CommandList*,int) ;
 int stub1 (struct ctlr_info*,struct CommandList*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void __enqueue_cmd_and_start_io(struct ctlr_info *h,
 struct CommandList *c, int reply_queue)
{
 dial_down_lockup_detection_during_fw_flash(h, c);
 atomic_inc(&h->commands_outstanding);
 if (c->device)
  atomic_inc(&c->device->commands_outstanding);

 reply_queue = h->reply_map[raw_smp_processor_id()];
 switch (c->cmd_type) {
 case 130:
  set_ioaccel1_performant_mode(h, c, reply_queue);
  writel(c->busaddr, h->vaddr + SA5_REQUEST_PORT_OFFSET);
  break;
 case 129:
  set_ioaccel2_performant_mode(h, c, reply_queue);
  writel(c->busaddr, h->vaddr + IOACCEL2_INBOUND_POSTQ_32);
  break;
 case 128:
  set_ioaccel2_tmf_performant_mode(h, c, reply_queue);
  writel(c->busaddr, h->vaddr + IOACCEL2_INBOUND_POSTQ_32);
  break;
 default:
  set_performant_mode(h, c, reply_queue);
  h->access.submit_command(h, c);
 }
}
