
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union bfa_port_stats_u {int dummy; } bfa_port_stats_u ;
struct TYPE_6__ {int kva; } ;
struct bfa_port_s {int (* stats_cbfn ) (int ,scalar_t__) ;int stats_cbarg; scalar_t__ stats_reset_time; TYPE_3__* stats; TYPE_2__ stats_dma; int stats_busy; scalar_t__ stats_status; } ;
typedef scalar_t__ bfa_status_t ;
struct TYPE_5__ {scalar_t__ secs_reset; } ;
struct TYPE_7__ {TYPE_1__ fc; } ;


 int BFA_FALSE ;
 scalar_t__ BFA_STATUS_OK ;
 int bfa_port_stats_swap (struct bfa_port_s*,TYPE_3__*) ;
 scalar_t__ ktime_get_seconds () ;
 int memcpy (TYPE_3__*,int ,int) ;
 int stub1 (int ,scalar_t__) ;

__attribute__((used)) static void
bfa_port_get_stats_isr(struct bfa_port_s *port, bfa_status_t status)
{
 port->stats_status = status;
 port->stats_busy = BFA_FALSE;

 if (status == BFA_STATUS_OK) {
  memcpy(port->stats, port->stats_dma.kva,
         sizeof(union bfa_port_stats_u));
  bfa_port_stats_swap(port, port->stats);

  port->stats->fc.secs_reset = ktime_get_seconds() - port->stats_reset_time;
 }

 if (port->stats_cbfn) {
  port->stats_cbfn(port->stats_cbarg, status);
  port->stats_cbfn = ((void*)0);
 }
}
