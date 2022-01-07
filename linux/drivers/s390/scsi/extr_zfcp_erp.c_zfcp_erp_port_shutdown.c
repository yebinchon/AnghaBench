
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_port {int dummy; } ;


 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int ZFCP_STATUS_COMMON_RUNNING ;
 int zfcp_erp_port_reopen (struct zfcp_port*,int,char*) ;

void zfcp_erp_port_shutdown(struct zfcp_port *port, int clear, char *dbftag)
{
 int flags = ZFCP_STATUS_COMMON_RUNNING | ZFCP_STATUS_COMMON_ERP_FAILED;
 zfcp_erp_port_reopen(port, clear | flags, dbftag);
}
