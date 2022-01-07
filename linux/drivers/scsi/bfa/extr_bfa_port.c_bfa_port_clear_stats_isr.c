
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_port_s {int (* stats_cbfn ) (int ,int ) ;int stats_cbarg; int stats_reset_time; int stats_busy; int stats_status; } ;
typedef int bfa_status_t ;


 int BFA_FALSE ;
 int ktime_get_seconds () ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void
bfa_port_clear_stats_isr(struct bfa_port_s *port, bfa_status_t status)
{
 port->stats_status = status;
 port->stats_busy = BFA_FALSE;




 port->stats_reset_time = ktime_get_seconds();

 if (port->stats_cbfn) {
  port->stats_cbfn(port->stats_cbarg, status);
  port->stats_cbfn = ((void*)0);
 }
}
