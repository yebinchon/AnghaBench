
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_port_s {int endis_cbarg; int (* endis_cbfn ) (int ,int ) ;int endis_pending; } ;
typedef int bfa_status_t ;


 int BFA_FALSE ;
 int bfa_trc (struct bfa_port_s*,int ) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void
bfa_port_disable_isr(struct bfa_port_s *port, bfa_status_t status)
{
 bfa_trc(port, status);
 port->endis_pending = BFA_FALSE;
 port->endis_cbfn(port->endis_cbarg, status);
}
