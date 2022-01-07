
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_pcie_port {int list; int base; struct mtk_pcie* pcie; } ;
struct mtk_pcie {struct device* dev; } ;
struct device {int dummy; } ;


 int devm_iounmap (struct device*,int ) ;
 int devm_kfree (struct device*,struct mtk_pcie_port*) ;
 int list_del (int *) ;

__attribute__((used)) static void mtk_pcie_port_free(struct mtk_pcie_port *port)
{
 struct mtk_pcie *pcie = port->pcie;
 struct device *dev = pcie->dev;

 devm_iounmap(dev, port->base);
 list_del(&port->list);
 devm_kfree(dev, port);
}
