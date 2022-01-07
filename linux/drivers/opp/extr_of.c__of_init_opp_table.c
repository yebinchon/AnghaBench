
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct opp_table {int is_genpd; struct device_node* np; int shared_opp; int voltage_tolerance_v1; int clock_latency_ns_max; } ;
struct device_node {int dummy; } ;
struct device {int of_node; } ;


 int OPP_TABLE_ACCESS_EXCLUSIVE ;
 int OPP_TABLE_ACCESS_SHARED ;
 struct device_node* _opp_of_get_opp_desc_node (struct device_node*,int) ;
 int _opp_table_alloc_required_tables (struct opp_table*,struct device*,struct device_node*) ;
 scalar_t__ of_find_property (struct device_node*,char*,int *) ;
 struct device_node* of_node_get (int ) ;
 int of_node_put (struct device_node*) ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;

void _of_init_opp_table(struct opp_table *opp_table, struct device *dev,
   int index)
{
 struct device_node *np, *opp_np;
 u32 val;





 np = of_node_get(dev->of_node);
 if (!np)
  return;

 if (!of_property_read_u32(np, "clock-latency", &val))
  opp_table->clock_latency_ns_max = val;
 of_property_read_u32(np, "voltage-tolerance",
        &opp_table->voltage_tolerance_v1);

 if (of_find_property(np, "#power-domain-cells", ((void*)0)))
  opp_table->is_genpd = 1;


 opp_np = _opp_of_get_opp_desc_node(np, index);
 of_node_put(np);

 if (!opp_np)
  return;

 if (of_property_read_bool(opp_np, "opp-shared"))
  opp_table->shared_opp = OPP_TABLE_ACCESS_SHARED;
 else
  opp_table->shared_opp = OPP_TABLE_ACCESS_EXCLUSIVE;

 opp_table->np = opp_np;

 _opp_table_alloc_required_tables(opp_table, dev, opp_np);
 of_node_put(opp_np);
}
