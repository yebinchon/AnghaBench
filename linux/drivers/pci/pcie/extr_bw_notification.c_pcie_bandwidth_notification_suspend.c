
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_device {int port; } ;


 int pcie_disable_link_bandwidth_notification (int ) ;

__attribute__((used)) static int pcie_bandwidth_notification_suspend(struct pcie_device *srv)
{
 pcie_disable_link_bandwidth_notification(srv->port);
 return 0;
}
