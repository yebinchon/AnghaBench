
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpm_port {scalar_t__ hard_reset_count; } ;


 int ERROR_RECOVERY ;
 int HARD_RESET_START ;
 scalar_t__ PD_N_HARD_RESET_COUNT ;
 int tcpm_log_force (struct tcpm_port*,char*) ;
 int tcpm_set_state (struct tcpm_port*,int ,int ) ;

__attribute__((used)) static void _tcpm_pd_hard_reset(struct tcpm_port *port)
{
 tcpm_log_force(port, "Received hard reset");




 tcpm_set_state(port,
         port->hard_reset_count < PD_N_HARD_RESET_COUNT ?
    HARD_RESET_START : ERROR_RECOVERY,
         0);
}
