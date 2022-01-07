
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_device {int port; int irq; } ;


 int ENODEV ;
 int IRQF_SHARED ;
 int pcie_bw_notification_handler ;
 int pcie_bw_notification_irq ;
 int pcie_enable_link_bandwidth_notification (int ) ;
 int pcie_link_bandwidth_notification_supported (int ) ;
 int request_threaded_irq (int ,int ,int ,int ,char*,struct pcie_device*) ;

__attribute__((used)) static int pcie_bandwidth_notification_probe(struct pcie_device *srv)
{
 int ret;


 if (!pcie_link_bandwidth_notification_supported(srv->port))
  return -ENODEV;

 ret = request_threaded_irq(srv->irq, pcie_bw_notification_irq,
       pcie_bw_notification_handler,
       IRQF_SHARED, "PCIe BW notif", srv);
 if (ret)
  return ret;

 pcie_enable_link_bandwidth_notification(srv->port);

 return 0;
}
