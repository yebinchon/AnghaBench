
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef void* u16 ;
struct metronomefb_par {int frame_count; TYPE_2__* board; TYPE_1__* metromem_cmd; } ;
struct TYPE_4__ {int (* met_wait_event_intr ) (struct metronomefb_par*) ;} ;
struct TYPE_3__ {int opcode; int* args; void* csum; } ;


 int memset (int *,int ,int) ;
 int stub1 (struct metronomefb_par*) ;

__attribute__((used)) static int metronome_display_cmd(struct metronomefb_par *par)
{
 int i;
 u16 cs;
 u16 opcode;
 static u8 borderval;






 if (par->metromem_cmd->opcode == 0xCC40)
  opcode = cs = 0xCC41;
 else
  opcode = cs = 0xCC40;


 i = 0;
 par->metromem_cmd->args[i] = 1 << 3
     | ((borderval++ % 4) & 0x0F) << 4
     | (par->frame_count - 1) << 8;
 cs += par->metromem_cmd->args[i++];


 memset((u8 *) (par->metromem_cmd->args + i), 0, (32-i)*2);

 par->metromem_cmd->csum = cs;
 par->metromem_cmd->opcode = opcode;

 return par->board->met_wait_event_intr(par);
}
