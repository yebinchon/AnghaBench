
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct bfa_throttle_cfg_s {int is_valid; int value; } ;
struct bfa_s {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dconf; } ;
struct TYPE_3__ {struct bfa_throttle_cfg_s throttle_cfg; } ;


 TYPE_2__* BFA_DCONF_MOD (struct bfa_s*) ;
 int bfa_dconf_get_min_cfg (struct bfa_s*) ;

u16
bfa_fcpim_read_throttle(struct bfa_s *bfa)
{
 struct bfa_throttle_cfg_s *throttle_cfg =
   &(BFA_DCONF_MOD(bfa)->dconf->throttle_cfg);

 return ((!bfa_dconf_get_min_cfg(bfa)) ?
        ((throttle_cfg->is_valid == 1) ? (throttle_cfg->value) : 0) : 0);
}
