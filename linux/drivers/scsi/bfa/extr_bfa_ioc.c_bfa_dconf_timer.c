
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_dconf_mod_s {int dummy; } ;


 int BFA_DCONF_SM_TIMEOUT ;
 int bfa_sm_send_event (struct bfa_dconf_mod_s*,int ) ;

__attribute__((used)) static void bfa_dconf_timer(void *cbarg)
{
 struct bfa_dconf_mod_s *dconf = cbarg;
 bfa_sm_send_event(dconf, BFA_DCONF_SM_TIMEOUT);
}
