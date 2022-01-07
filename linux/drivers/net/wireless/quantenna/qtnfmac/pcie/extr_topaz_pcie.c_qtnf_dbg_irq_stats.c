
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int private; } ;
struct TYPE_2__ {int pcie_irq_count; } ;
struct qtnf_pcie_topaz_state {TYPE_1__ base; } ;
struct qtnf_bus {int dummy; } ;


 struct qtnf_bus* dev_get_drvdata (int ) ;
 struct qtnf_pcie_topaz_state* get_bus_priv (struct qtnf_bus*) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int qtnf_dbg_irq_stats(struct seq_file *s, void *data)
{
 struct qtnf_bus *bus = dev_get_drvdata(s->private);
 struct qtnf_pcie_topaz_state *ts = get_bus_priv(bus);

 seq_printf(s, "pcie_irq_count(%u)\n", ts->base.pcie_irq_count);

 return 0;
}
