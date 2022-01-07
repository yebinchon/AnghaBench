
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opp_table {int required_opp_count; int is_genpd; struct opp_table** required_opp_tables; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct opp_table*) ;
 struct opp_table* _find_table_of_opp_np (struct device_node*) ;
 int _opp_table_free_required_tables (struct opp_table*) ;
 int dev_err (struct device*,char*,...) ;
 struct opp_table** kcalloc (int,int,int ) ;
 int of_count_phandle_with_args (struct device_node*,char*,int *) ;
 struct device_node* of_get_next_available_child (struct device_node*,int *) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_required_opp (struct device_node*,int) ;

__attribute__((used)) static void _opp_table_alloc_required_tables(struct opp_table *opp_table,
          struct device *dev,
          struct device_node *opp_np)
{
 struct opp_table **required_opp_tables;
 struct device_node *required_np, *np;
 int count, i;


 np = of_get_next_available_child(opp_np, ((void*)0));
 if (!np) {
  dev_err(dev, "Empty OPP table\n");
  return;
 }

 count = of_count_phandle_with_args(np, "required-opps", ((void*)0));
 if (!count)
  goto put_np;

 required_opp_tables = kcalloc(count, sizeof(*required_opp_tables),
          GFP_KERNEL);
 if (!required_opp_tables)
  goto put_np;

 opp_table->required_opp_tables = required_opp_tables;
 opp_table->required_opp_count = count;

 for (i = 0; i < count; i++) {
  required_np = of_parse_required_opp(np, i);
  if (!required_np)
   goto free_required_tables;

  required_opp_tables[i] = _find_table_of_opp_np(required_np);
  of_node_put(required_np);

  if (IS_ERR(required_opp_tables[i]))
   goto free_required_tables;






  if (!required_opp_tables[i]->is_genpd) {
   dev_err(dev, "required-opp doesn't belong to genpd: %pOF\n",
    required_np);
   goto free_required_tables;
  }
 }

 goto put_np;

free_required_tables:
 _opp_table_free_required_tables(opp_table);
put_np:
 of_node_put(np);
}
