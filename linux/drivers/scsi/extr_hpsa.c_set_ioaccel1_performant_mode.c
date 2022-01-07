
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct io_accel1_cmd {int ReplyQueue; } ;
struct ctlr_info {int* ioaccel1_blockFetchTable; struct io_accel1_cmd* ioaccel_cmd_pool; } ;
struct TYPE_2__ {size_t SGList; } ;
struct CommandList {size_t cmdindex; int busaddr; TYPE_1__ Header; } ;


 int IOACCEL1_BUSADDR_CMDTYPE ;

__attribute__((used)) static void set_ioaccel1_performant_mode(struct ctlr_info *h,
      struct CommandList *c,
      int reply_queue)
{
 struct io_accel1_cmd *cp = &h->ioaccel_cmd_pool[c->cmdindex];





 cp->ReplyQueue = reply_queue;






 c->busaddr |= 1 | (h->ioaccel1_blockFetchTable[c->Header.SGList] << 1) |
     IOACCEL1_BUSADDR_CMDTYPE;
}
