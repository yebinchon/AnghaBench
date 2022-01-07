
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smp2p_entry {int domain; } ;
struct qcom_smp2p {int dev; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int dev_err (int ,char*) ;
 int irq_domain_add_linear (struct device_node*,int,int *,struct smp2p_entry*) ;
 int smp2p_irq_ops ;

__attribute__((used)) static int qcom_smp2p_inbound_entry(struct qcom_smp2p *smp2p,
        struct smp2p_entry *entry,
        struct device_node *node)
{
 entry->domain = irq_domain_add_linear(node, 32, &smp2p_irq_ops, entry);
 if (!entry->domain) {
  dev_err(smp2p->dev, "failed to add irq_domain\n");
  return -ENOMEM;
 }

 return 0;
}
