
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cht_int33fe_data {int dummy; } ;
struct TYPE_2__ {int node; } ;


 int EPROBE_DEFER ;
 int cht_int33fe_remove_nodes (struct cht_int33fe_data*) ;
 int cht_int33fe_setup_dp (struct cht_int33fe_data*) ;
 TYPE_1__ mux_ref ;
 int nodes ;
 int software_node_find_by_name (int *,char*) ;
 int software_node_register_nodes (int ) ;

__attribute__((used)) static int cht_int33fe_add_nodes(struct cht_int33fe_data *data)
{
 int ret;

 ret = software_node_register_nodes(nodes);
 if (ret)
  return ret;
 mux_ref.node = software_node_find_by_name(((void*)0), "intel-xhci-usb-sw");
 if (!mux_ref.node) {
  ret = -EPROBE_DEFER;
  goto err_remove_nodes;
 }





 ret = cht_int33fe_setup_dp(data);
 if (ret)
  goto err_remove_nodes;

 return 0;

err_remove_nodes:
 cht_int33fe_remove_nodes(data);

 return ret;
}
