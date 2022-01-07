
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsa_tmf_struct {int reply_queue; } ;
struct ctlr_info {int * ioaccel2_blockFetchTable; int * ioaccel2_cmd_pool; } ;
struct CommandList {size_t cmdindex; int busaddr; } ;



__attribute__((used)) static void set_ioaccel2_tmf_performant_mode(struct ctlr_info *h,
      struct CommandList *c,
      int reply_queue)
{
 struct hpsa_tmf_struct *cp = (struct hpsa_tmf_struct *)
  &h->ioaccel2_cmd_pool[c->cmdindex];




 cp->reply_queue = reply_queue;





 c->busaddr |= h->ioaccel2_blockFetchTable[0];
}
