
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct metronomefb_par {TYPE_2__* board; TYPE_1__* metromem_cmd; } ;
struct TYPE_4__ {int (* met_wait_event ) (struct metronomefb_par*) ;} ;
struct TYPE_3__ {int csum; int opcode; scalar_t__* args; } ;


 int memset (int *,int ,int) ;
 int stub1 (struct metronomefb_par*) ;

__attribute__((used)) static int metronome_init_cmd(struct metronomefb_par *par)
{
 int i;
 u16 cs;






 cs = 0xCC20;


 i = 0;
 par->metromem_cmd->args[i] = 0;
 cs += par->metromem_cmd->args[i++];


 memset((u8 *) (par->metromem_cmd->args + i), 0, (32-i)*2);

 par->metromem_cmd->csum = cs;
 par->metromem_cmd->opcode = 0xCC20;

 return par->board->met_wait_event(par);
}
