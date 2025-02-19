
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int knows_txdone; struct device* dev; } ;
struct qcom_smd_edge {int irq; int name; int ipc_bit; int ipc_offset; int * ipc_regmap; int * mbox_chan; TYPE_1__ mbox_client; int remote_pid; int edge_id; int of_node; int state_work; int scan_work; int channels_lock; int channels; } ;
struct device_node {int name; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int QCOM_SMEM_HOST_ANY ;
 int dev_err (struct device*,char*,...) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,struct qcom_smd_edge*) ;
 int irq_of_parse_and_map (struct device_node*,int ) ;
 int * mbox_request_channel (TYPE_1__*,int ) ;
 int of_node_get (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;
 int of_property_read_string (struct device_node*,char*,int *) ;
 int of_property_read_u32 (struct device_node*,char const*,int *) ;
 int of_property_read_u32_index (struct device_node*,char const*,int,int *) ;
 int qcom_channel_scan_worker ;
 int qcom_channel_state_worker ;
 int qcom_smd_edge_intr ;
 int spin_lock_init (int *) ;
 int * syscon_node_to_regmap (struct device_node*) ;

__attribute__((used)) static int qcom_smd_parse_edge(struct device *dev,
          struct device_node *node,
          struct qcom_smd_edge *edge)
{
 struct device_node *syscon_np;
 const char *key;
 int irq;
 int ret;

 INIT_LIST_HEAD(&edge->channels);
 spin_lock_init(&edge->channels_lock);

 INIT_WORK(&edge->scan_work, qcom_channel_scan_worker);
 INIT_WORK(&edge->state_work, qcom_channel_state_worker);

 edge->of_node = of_node_get(node);

 key = "qcom,smd-edge";
 ret = of_property_read_u32(node, key, &edge->edge_id);
 if (ret) {
  dev_err(dev, "edge missing %s property\n", key);
  return -EINVAL;
 }

 edge->remote_pid = QCOM_SMEM_HOST_ANY;
 key = "qcom,remote-pid";
 of_property_read_u32(node, key, &edge->remote_pid);

 edge->mbox_client.dev = dev;
 edge->mbox_client.knows_txdone = 1;
 edge->mbox_chan = mbox_request_channel(&edge->mbox_client, 0);
 if (IS_ERR(edge->mbox_chan)) {
  if (PTR_ERR(edge->mbox_chan) != -ENODEV)
   return PTR_ERR(edge->mbox_chan);

  edge->mbox_chan = ((void*)0);

  syscon_np = of_parse_phandle(node, "qcom,ipc", 0);
  if (!syscon_np) {
   dev_err(dev, "no qcom,ipc node\n");
   return -ENODEV;
  }

  edge->ipc_regmap = syscon_node_to_regmap(syscon_np);
  if (IS_ERR(edge->ipc_regmap))
   return PTR_ERR(edge->ipc_regmap);

  key = "qcom,ipc";
  ret = of_property_read_u32_index(node, key, 1, &edge->ipc_offset);
  if (ret < 0) {
   dev_err(dev, "no offset in %s\n", key);
   return -EINVAL;
  }

  ret = of_property_read_u32_index(node, key, 2, &edge->ipc_bit);
  if (ret < 0) {
   dev_err(dev, "no bit in %s\n", key);
   return -EINVAL;
  }
 }

 ret = of_property_read_string(node, "label", &edge->name);
 if (ret < 0)
  edge->name = node->name;

 irq = irq_of_parse_and_map(node, 0);
 if (irq < 0) {
  dev_err(dev, "required smd interrupt missing\n");
  return -EINVAL;
 }

 ret = devm_request_irq(dev, irq,
          qcom_smd_edge_intr, IRQF_TRIGGER_RISING,
          node->name, edge);
 if (ret) {
  dev_err(dev, "failed to request smd irq\n");
  return ret;
 }

 edge->irq = irq;

 return 0;
}
