
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_pcie {int ports; } ;
struct seq_file {struct tegra_pcie* private; } ;
typedef int loff_t ;


 void* seq_list_next (void*,int *,int *) ;

__attribute__((used)) static void *tegra_pcie_ports_seq_next(struct seq_file *s, void *v, loff_t *pos)
{
 struct tegra_pcie *pcie = s->private;

 return seq_list_next(v, &pcie->ports, pos);
}
