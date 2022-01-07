
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_port {int status; int erp_action; } ;


 int ZFCP_STATUS_COMMON_UNBLOCKED ;
 int atomic_or (int ,int *) ;
 int zfcp_dbf_rec_run (char*,int *) ;
 scalar_t__ zfcp_erp_status_change_set (int ,int *) ;

__attribute__((used)) static void zfcp_erp_port_unblock(struct zfcp_port *port)
{
 if (zfcp_erp_status_change_set(ZFCP_STATUS_COMMON_UNBLOCKED,
           &port->status))
  zfcp_dbf_rec_run("erpubl1", &port->erp_action);
 atomic_or(ZFCP_STATUS_COMMON_UNBLOCKED, &port->status);
}
