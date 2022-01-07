
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct metronomefb_par {TYPE_2__* board; TYPE_1__* metromem_cmd; } ;
struct TYPE_4__ {int (* met_wait_event ) (struct metronomefb_par*) ;int (* set_stdby ) (struct metronomefb_par*,int) ;int (* set_rst ) (struct metronomefb_par*,int) ;} ;
struct TYPE_3__ {int opcode; int* args; int csum; } ;


 int ARRAY_SIZE (int*) ;
 int memset (int*,int ,int) ;
 int msleep (int) ;
 int stub1 (struct metronomefb_par*,int) ;
 int stub2 (struct metronomefb_par*,int) ;
 int stub3 (struct metronomefb_par*) ;

__attribute__((used)) static int metronome_powerup_cmd(struct metronomefb_par *par)
{
 int i;
 u16 cs;


 par->metromem_cmd->opcode = 0x1234;
 cs = par->metromem_cmd->opcode;


 for (i = 0; i < 3; i++) {
  par->metromem_cmd->args[i] = 1024;
  cs += par->metromem_cmd->args[i];
 }


 memset(&par->metromem_cmd->args[i], 0,
        (ARRAY_SIZE(par->metromem_cmd->args) - i) * 2);

 par->metromem_cmd->csum = cs;

 msleep(1);
 par->board->set_rst(par, 1);

 msleep(1);
 par->board->set_stdby(par, 1);

 return par->board->met_wait_event(par);
}
