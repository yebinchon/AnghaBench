
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioc_s {int notify_q; } ;


 int INIT_LIST_HEAD (int *) ;
 int IOC_E_DETACH ;
 int bfa_fsm_send_event (struct bfa_ioc_s*,int ) ;

void
bfa_ioc_detach(struct bfa_ioc_s *ioc)
{
 bfa_fsm_send_event(ioc, IOC_E_DETACH);
 INIT_LIST_HEAD(&ioc->notify_q);
}
