
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
struct qtnf_pcie_bus_priv {int msi_enabled; } ;
struct qtnf_bus {int dummy; } ;


 struct qtnf_bus* dev_get_drvdata (int ) ;
 struct qtnf_pcie_bus_priv* get_bus_priv (struct qtnf_bus*) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int qtnf_dbg_msi_show(struct seq_file *s, void *data)
{
 struct qtnf_bus *bus = dev_get_drvdata(s->private);
 struct qtnf_pcie_bus_priv *priv = get_bus_priv(bus);

 seq_printf(s, "%u\n", priv->msi_enabled);

 return 0;
}
