
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_lport {int dummy; } ;


 int fc_disc_stop (struct fc_lport*) ;
 int fc_rport_flush_queue () ;

__attribute__((used)) static void fc_disc_stop_final(struct fc_lport *lport)
{
 fc_disc_stop(lport);
 fc_rport_flush_queue();
}
