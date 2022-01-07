
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fcoe_port {int * data_src_addr; } ;
struct fc_lport {int dummy; } ;


 struct fcoe_port* lport_priv (struct fc_lport*) ;

__attribute__((used)) static u8 *fcoe_get_src_mac(struct fc_lport *lport)
{
 struct fcoe_port *port = lport_priv(lport);

 return port->data_src_addr;
}
