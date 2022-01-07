
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpci {int port; } ;


 int tcpm_unregister_port (int ) ;

void tcpci_unregister_port(struct tcpci *tcpci)
{
 tcpm_unregister_port(tcpci->port);
}
