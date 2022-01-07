
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
struct qtnf_pcie_bus_priv {int pdev; } ;
struct qtnf_bus {int dummy; } ;


 struct qtnf_bus* dev_get_drvdata (int ) ;
 struct qtnf_pcie_bus_priv* get_bus_priv (struct qtnf_bus*) ;
 int pcie_get_mps (int ) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int qtnf_dbg_mps_show(struct seq_file *s, void *data)
{
 struct qtnf_bus *bus = dev_get_drvdata(s->private);
 struct qtnf_pcie_bus_priv *priv = get_bus_priv(bus);

 seq_printf(s, "%d\n", pcie_get_mps(priv->pdev));

 return 0;
}
