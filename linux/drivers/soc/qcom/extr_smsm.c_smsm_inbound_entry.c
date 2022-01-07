
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsm_entry {int domain; } ;
struct qcom_smsm {int dev; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int IRQF_ONESHOT ;
 int dev_err (int ,char*) ;
 int devm_request_threaded_irq (int ,int,int *,int ,int ,char*,void*) ;
 int irq_domain_add_linear (struct device_node*,int,int *,struct smsm_entry*) ;
 int irq_of_parse_and_map (struct device_node*,int ) ;
 int smsm_intr ;
 int smsm_irq_ops ;

__attribute__((used)) static int smsm_inbound_entry(struct qcom_smsm *smsm,
         struct smsm_entry *entry,
         struct device_node *node)
{
 int ret;
 int irq;

 irq = irq_of_parse_and_map(node, 0);
 if (!irq) {
  dev_err(smsm->dev, "failed to parse smsm interrupt\n");
  return -EINVAL;
 }

 ret = devm_request_threaded_irq(smsm->dev, irq,
     ((void*)0), smsm_intr,
     IRQF_ONESHOT,
     "smsm", (void *)entry);
 if (ret) {
  dev_err(smsm->dev, "failed to request interrupt\n");
  return ret;
 }

 entry->domain = irq_domain_add_linear(node, 32, &smsm_irq_ops, entry);
 if (!entry->domain) {
  dev_err(smsm->dev, "failed to add irq_domain\n");
  return -ENOMEM;
 }

 return 0;
}
