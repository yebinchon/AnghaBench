
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct metronomefb_par {TYPE_1__* board; } ;
struct TYPE_2__ {int (* setup_io ) (struct metronomefb_par*) ;} ;


 int metronome_config_cmd (struct metronomefb_par*) ;
 int metronome_init_cmd (struct metronomefb_par*) ;
 int metronome_powerup_cmd (struct metronomefb_par*) ;
 int stub1 (struct metronomefb_par*) ;

__attribute__((used)) static int metronome_init_regs(struct metronomefb_par *par)
{
 int res;

 res = par->board->setup_io(par);
 if (res)
  return res;

 res = metronome_powerup_cmd(par);
 if (res)
  return res;

 res = metronome_config_cmd(par);
 if (res)
  return res;

 res = metronome_init_cmd(par);

 return res;
}
