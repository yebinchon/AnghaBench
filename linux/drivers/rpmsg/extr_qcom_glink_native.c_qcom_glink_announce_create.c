
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct rpmsg_device {TYPE_1__ dev; int ept; } ;
struct qcom_glink {scalar_t__ intentless; } ;
struct property {int length; int * value; } ;
struct glink_core_rx_intent {int dummy; } ;
struct glink_channel {struct qcom_glink* glink; } ;
struct device_node {int dummy; } ;
typedef int __be32 ;


 int SZ_1K ;
 int be32_to_cpup (int ) ;
 int cpu_to_be32 (int) ;
 struct property* of_find_property (struct device_node*,char*,int *) ;
 int qcom_glink_advertise_intent (struct qcom_glink*,struct glink_channel*,struct glink_core_rx_intent*) ;
 struct glink_core_rx_intent* qcom_glink_alloc_intent (struct qcom_glink*,struct glink_channel*,int,int) ;
 struct glink_channel* to_glink_channel (int ) ;

__attribute__((used)) static int qcom_glink_announce_create(struct rpmsg_device *rpdev)
{
 struct glink_channel *channel = to_glink_channel(rpdev->ept);
 struct device_node *np = rpdev->dev.of_node;
 struct qcom_glink *glink = channel->glink;
 struct glink_core_rx_intent *intent;
 const struct property *prop = ((void*)0);
 __be32 defaults[] = { cpu_to_be32(SZ_1K), cpu_to_be32(5) };
 int num_intents;
 int num_groups = 1;
 __be32 *val = defaults;
 int size;

 if (glink->intentless)
  return 0;

 prop = of_find_property(np, "qcom,intents", ((void*)0));
 if (prop) {
  val = prop->value;
  num_groups = prop->length / sizeof(u32) / 2;
 }


 while (num_groups--) {
  size = be32_to_cpup(val++);
  num_intents = be32_to_cpup(val++);
  while (num_intents--) {
   intent = qcom_glink_alloc_intent(glink, channel, size,
        1);
   if (!intent)
    break;

   qcom_glink_advertise_intent(glink, channel, intent);
  }
 }
 return 0;
}
