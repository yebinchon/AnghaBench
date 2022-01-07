
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_pcie {int ports; } ;
struct seq_file {struct tegra_pcie* private; } ;
typedef int loff_t ;


 scalar_t__ list_empty (int *) ;
 void* seq_list_start (int *,int ) ;
 int seq_printf (struct seq_file*,char*) ;

__attribute__((used)) static void *tegra_pcie_ports_seq_start(struct seq_file *s, loff_t *pos)
{
 struct tegra_pcie *pcie = s->private;

 if (list_empty(&pcie->ports))
  return ((void*)0);

 seq_printf(s, "Index  Status\n");

 return seq_list_start(&pcie->ports, *pos);
}
