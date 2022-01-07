
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfcmrvl_platform_data {int flow_control; int break_control; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int nfcmrvl_parse_dt (struct device_node*,struct nfcmrvl_platform_data*) ;
 scalar_t__ of_find_property (struct device_node*,char*,int *) ;
 struct device_node* of_get_compatible_child (struct device_node*,char*) ;
 int of_node_put (struct device_node*) ;
 int pr_err (char*) ;

__attribute__((used)) static int nfcmrvl_uart_parse_dt(struct device_node *node,
     struct nfcmrvl_platform_data *pdata)
{
 struct device_node *matched_node;
 int ret;

 matched_node = of_get_compatible_child(node, "marvell,nfc-uart");
 if (!matched_node) {
  matched_node = of_get_compatible_child(node, "mrvl,nfc-uart");
  if (!matched_node)
   return -ENODEV;
 }

 ret = nfcmrvl_parse_dt(matched_node, pdata);
 if (ret < 0) {
  pr_err("Failed to get generic entries\n");
  of_node_put(matched_node);
  return ret;
 }

 if (of_find_property(matched_node, "flow-control", ((void*)0)))
  pdata->flow_control = 1;
 else
  pdata->flow_control = 0;

 if (of_find_property(matched_node, "break-control", ((void*)0)))
  pdata->break_control = 1;
 else
  pdata->break_control = 0;

 of_node_put(matched_node);

 return 0;
}
