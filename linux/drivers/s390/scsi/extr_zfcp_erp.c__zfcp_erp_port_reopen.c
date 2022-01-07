
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_port {int adapter; } ;


 int ZFCP_ERP_ACTION_REOPEN_PORT ;
 int zfcp_erp_action_enqueue (int ,int ,struct zfcp_port*,int *,char*,int ) ;
 int zfcp_erp_port_block (struct zfcp_port*,int) ;
 int zfcp_scsi_schedule_rport_block (struct zfcp_port*) ;

__attribute__((used)) static void _zfcp_erp_port_reopen(struct zfcp_port *port, int clear,
      char *dbftag)
{
 zfcp_erp_port_block(port, clear);
 zfcp_scsi_schedule_rport_block(port);

 zfcp_erp_action_enqueue(ZFCP_ERP_ACTION_REOPEN_PORT,
    port->adapter, port, ((void*)0), dbftag, 0);
}
