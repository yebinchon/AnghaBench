
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_port {int dummy; } ;


 int ZFCP_STATUS_COMMON_UNBLOCKED ;
 int zfcp_erp_clear_port_status (struct zfcp_port*,int) ;

__attribute__((used)) static void zfcp_erp_port_block(struct zfcp_port *port, int clear)
{
 zfcp_erp_clear_port_status(port,
        ZFCP_STATUS_COMMON_UNBLOCKED | clear);
}
