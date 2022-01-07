
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; int end; int flags; char const* name; } ;
struct device_node {int dummy; } ;


 int IORESOURCE_IRQ ;
 int irq_get_irq_data (int) ;
 int irqd_get_trigger_type (int ) ;
 int memset (struct resource*,int ,int) ;
 int of_irq_get (struct device_node*,int) ;
 char const* of_node_full_name (struct device_node*) ;
 int of_property_read_string_index (struct device_node*,char*,int,char const**) ;

int of_irq_to_resource(struct device_node *dev, int index, struct resource *r)
{
 int irq = of_irq_get(dev, index);

 if (irq < 0)
  return irq;



 if (r && irq) {
  const char *name = ((void*)0);

  memset(r, 0, sizeof(*r));




  of_property_read_string_index(dev, "interrupt-names", index,
           &name);

  r->start = r->end = irq;
  r->flags = IORESOURCE_IRQ | irqd_get_trigger_type(irq_get_irq_data(irq));
  r->name = name ? name : of_node_full_name(dev);
 }

 return irq;
}
