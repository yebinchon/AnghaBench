
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int start; } ;
struct tegra_pcie_port {int list; TYPE_1__ regs; int base; struct tegra_pcie* pcie; } ;
struct tegra_pcie {struct device* dev; } ;
struct device {int dummy; } ;


 int devm_iounmap (struct device*,int ) ;
 int devm_kfree (struct device*,struct tegra_pcie_port*) ;
 int devm_release_mem_region (struct device*,int ,int ) ;
 int list_del (int *) ;
 int resource_size (TYPE_1__*) ;

__attribute__((used)) static void tegra_pcie_port_free(struct tegra_pcie_port *port)
{
 struct tegra_pcie *pcie = port->pcie;
 struct device *dev = pcie->dev;

 devm_iounmap(dev, port->base);
 devm_release_mem_region(dev, port->regs.start,
    resource_size(&port->regs));
 list_del(&port->list);
 devm_kfree(dev, port);
}
