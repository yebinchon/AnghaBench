
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_rport_s {int rport_drv; } ;
typedef scalar_t__ bfa_boolean_t ;


 int bfa_cb_rport_offline (int ) ;

__attribute__((used)) static void
__bfa_cb_rport_offline(void *cbarg, bfa_boolean_t complete)
{
 struct bfa_rport_s *rp = cbarg;

 if (complete)
  bfa_cb_rport_offline(rp->rport_drv);
}
