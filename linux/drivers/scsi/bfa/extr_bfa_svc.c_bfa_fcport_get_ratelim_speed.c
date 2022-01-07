
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_s {int dummy; } ;
struct TYPE_2__ {int trl_def_speed; } ;
struct bfa_fcport_s {TYPE_1__ cfg; } ;
typedef enum bfa_port_speed { ____Placeholder_bfa_port_speed } bfa_port_speed ;


 struct bfa_fcport_s* BFA_FCPORT_MOD (struct bfa_s*) ;
 int bfa_trc (struct bfa_s*,int) ;

enum bfa_port_speed
bfa_fcport_get_ratelim_speed(struct bfa_s *bfa)
{
 struct bfa_fcport_s *fcport = BFA_FCPORT_MOD(bfa);

 bfa_trc(bfa, fcport->cfg.trl_def_speed);
 return fcport->cfg.trl_def_speed;

}
