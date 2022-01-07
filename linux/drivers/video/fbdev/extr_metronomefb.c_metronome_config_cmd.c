
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct metronomefb_par {size_t dt; TYPE_1__* board; TYPE_2__* metromem_cmd; } ;
struct TYPE_6__ {int config; } ;
struct TYPE_5__ {int csum; int opcode; int * args; } ;
struct TYPE_4__ {int (* met_wait_event ) (struct metronomefb_par*) ;} ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ calc_img_cksum (int *,int) ;
 TYPE_3__* epd_frame_table ;
 int memcpy (int *,int ,int) ;
 int memset (int *,int ,int) ;
 int stub1 (struct metronomefb_par*) ;

__attribute__((used)) static int metronome_config_cmd(struct metronomefb_par *par)
{




 memcpy(par->metromem_cmd->args, epd_frame_table[par->dt].config,
  sizeof(epd_frame_table[par->dt].config));

 memset(&par->metromem_cmd->args[4], 0,
        (ARRAY_SIZE(par->metromem_cmd->args) - 4) * 2);

 par->metromem_cmd->csum = 0xCC10;
 par->metromem_cmd->csum += calc_img_cksum(par->metromem_cmd->args, 4);
 par->metromem_cmd->opcode = 0xCC10;

 return par->board->met_wait_event(par);
}
