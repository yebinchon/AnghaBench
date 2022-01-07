
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sci_port {int has_rtscts; } ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct plat_sci_port {int regtype; int type; } ;
struct device_node {int dummy; } ;


 int ARRAY_SIZE (struct sci_port*) ;
 int CONFIG_OF ;
 int GFP_KERNEL ;
 int IS_ENABLED (int ) ;
 int SCI_OF_REGTYPE (void const*) ;
 int SCI_OF_TYPE (void const*) ;
 int dev_err (TYPE_1__*,char*,int) ;
 struct plat_sci_port* devm_kzalloc (TYPE_1__*,int,int ) ;
 int ffz (int ) ;
 int of_alias_get_id (struct device_node*,char*) ;
 void* of_device_get_match_data (TYPE_1__*) ;
 int of_property_read_bool (struct device_node*,char*) ;
 struct sci_port* sci_ports ;
 int sci_ports_in_use ;

__attribute__((used)) static struct plat_sci_port *sci_parse_dt(struct platform_device *pdev,
       unsigned int *dev_id)
{
 struct device_node *np = pdev->dev.of_node;
 struct plat_sci_port *p;
 struct sci_port *sp;
 const void *data;
 int id;

 if (!IS_ENABLED(CONFIG_OF) || !np)
  return ((void*)0);

 data = of_device_get_match_data(&pdev->dev);

 p = devm_kzalloc(&pdev->dev, sizeof(struct plat_sci_port), GFP_KERNEL);
 if (!p)
  return ((void*)0);


 id = of_alias_get_id(np, "serial");
 if (id < 0 && ~sci_ports_in_use)
  id = ffz(sci_ports_in_use);
 if (id < 0) {
  dev_err(&pdev->dev, "failed to get alias id (%d)\n", id);
  return ((void*)0);
 }
 if (id >= ARRAY_SIZE(sci_ports)) {
  dev_err(&pdev->dev, "serial%d out of range\n", id);
  return ((void*)0);
 }

 sp = &sci_ports[id];
 *dev_id = id;

 p->type = SCI_OF_TYPE(data);
 p->regtype = SCI_OF_REGTYPE(data);

 sp->has_rtscts = of_property_read_bool(np, "uart-has-rtscts");

 return p;
}
