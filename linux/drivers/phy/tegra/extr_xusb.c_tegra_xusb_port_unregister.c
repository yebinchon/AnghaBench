
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_xusb_port {int dev; } ;


 int device_unregister (int *) ;

__attribute__((used)) static void tegra_xusb_port_unregister(struct tegra_xusb_port *port)
{
 device_unregister(&port->dev);
}
