
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_device {int irq; int port; } ;


 int free_irq (int ,struct pcie_device*) ;
 int pcie_disable_link_bandwidth_notification (int ) ;

__attribute__((used)) static void pcie_bandwidth_notification_remove(struct pcie_device *srv)
{
 pcie_disable_link_bandwidth_notification(srv->port);
 free_irq(srv->irq, srv);
}
