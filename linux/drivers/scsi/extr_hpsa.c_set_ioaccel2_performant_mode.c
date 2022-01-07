
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_accel2_cmd {int reply_queue; size_t sg_count; } ;
struct ctlr_info {int * ioaccel2_blockFetchTable; struct io_accel2_cmd* ioaccel2_cmd_pool; } ;
struct CommandList {size_t cmdindex; int busaddr; } ;



__attribute__((used)) static void set_ioaccel2_performant_mode(struct ctlr_info *h,
      struct CommandList *c,
      int reply_queue)
{
 struct io_accel2_cmd *cp = &h->ioaccel2_cmd_pool[c->cmdindex];





 cp->reply_queue = reply_queue;






 c->busaddr |= (h->ioaccel2_blockFetchTable[cp->sg_count]);
}
