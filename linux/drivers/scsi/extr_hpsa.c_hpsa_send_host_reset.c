
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ctlr_info {int dummy; } ;
struct TYPE_2__ {int * CDB; } ;
struct CommandList {int * waiting; TYPE_1__ Request; } ;


 int HPSA_DEVICE_RESET_MSG ;
 int RAID_CTLR_LUNID ;
 int TYPE_MSG ;
 struct CommandList* cmd_alloc (struct ctlr_info*) ;
 int enqueue_cmd_and_start_io (struct ctlr_info*,struct CommandList*) ;
 int fill_cmd (struct CommandList*,int ,struct ctlr_info*,int *,int ,int ,int ,int ) ;

__attribute__((used)) static void hpsa_send_host_reset(struct ctlr_info *h, u8 reset_type)
{
 struct CommandList *c;

 c = cmd_alloc(h);


 (void) fill_cmd(c, HPSA_DEVICE_RESET_MSG, h, ((void*)0), 0, 0,
  RAID_CTLR_LUNID, TYPE_MSG);
 c->Request.CDB[1] = reset_type;
 c->waiting = ((void*)0);
 enqueue_cmd_and_start_io(h, c);




 return;
}
