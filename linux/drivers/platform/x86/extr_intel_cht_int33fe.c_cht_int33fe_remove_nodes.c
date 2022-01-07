
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cht_int33fe_data {TYPE_1__* dp; } ;
struct TYPE_5__ {int * node; } ;
struct TYPE_4__ {int * secondary; } ;


 int fwnode_handle_put (TYPE_1__*) ;
 TYPE_2__ mux_ref ;
 int nodes ;
 TYPE_1__* software_node_fwnode (int *) ;
 int software_node_unregister_nodes (int ) ;

__attribute__((used)) static void cht_int33fe_remove_nodes(struct cht_int33fe_data *data)
{
 software_node_unregister_nodes(nodes);

 if (mux_ref.node) {
  fwnode_handle_put(software_node_fwnode(mux_ref.node));
  mux_ref.node = ((void*)0);
 }

 if (data->dp) {
  data->dp->secondary = ((void*)0);
  fwnode_handle_put(data->dp);
  data->dp = ((void*)0);
 }
}
