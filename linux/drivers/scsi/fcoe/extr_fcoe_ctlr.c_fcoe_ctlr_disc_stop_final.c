
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_lport {int dummy; } ;


 int fc_rport_flush_queue () ;
 int fcoe_ctlr_disc_stop (struct fc_lport*) ;
 int synchronize_rcu () ;

__attribute__((used)) static void fcoe_ctlr_disc_stop_final(struct fc_lport *lport)
{
 fcoe_ctlr_disc_stop(lport);
 fc_rport_flush_queue();
 synchronize_rcu();
}
