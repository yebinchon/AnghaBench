
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct of_phandle_args {int args_count; int * args; struct device_node* np; } ;
struct device_node {int dummy; } ;
typedef int __be32 ;


 int EINVAL ;
 int OF_IMAP_OLDWORLD_MAC ;
 int * of_get_property (struct device_node*,char*,int *) ;
 struct device_node* of_irq_find_parent (struct device_node*) ;
 int of_irq_parse_oldworld (struct device_node*,int,struct of_phandle_args*) ;
 int of_irq_parse_raw (int const*,struct of_phandle_args*) ;
 int of_irq_workarounds ;
 int of_node_put (struct device_node*) ;
 int of_parse_phandle_with_args (struct device_node*,char*,char*,int,struct of_phandle_args*) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int*) ;
 int of_property_read_u32_index (struct device_node*,char*,int,int *) ;
 int pr_debug (char*,int ,...) ;

int of_irq_parse_one(struct device_node *device, int index, struct of_phandle_args *out_irq)
{
 struct device_node *p;
 const __be32 *addr;
 u32 intsize;
 int i, res;

 pr_debug("of_irq_parse_one: dev=%pOF, index=%d\n", device, index);


 if (of_irq_workarounds & OF_IMAP_OLDWORLD_MAC)
  return of_irq_parse_oldworld(device, index, out_irq);


 addr = of_get_property(device, "reg", ((void*)0));


 res = of_parse_phandle_with_args(device, "interrupts-extended",
     "#interrupt-cells", index, out_irq);
 if (!res)
  return of_irq_parse_raw(addr, out_irq);


 p = of_irq_find_parent(device);
 if (p == ((void*)0))
  return -EINVAL;


 if (of_property_read_u32(p, "#interrupt-cells", &intsize)) {
  res = -EINVAL;
  goto out;
 }

 pr_debug(" parent=%pOF, intsize=%d\n", p, intsize);


 out_irq->np = p;
 out_irq->args_count = intsize;
 for (i = 0; i < intsize; i++) {
  res = of_property_read_u32_index(device, "interrupts",
       (index * intsize) + i,
       out_irq->args + i);
  if (res)
   goto out;
 }

 pr_debug(" intspec=%d\n", *out_irq->args);



 res = of_irq_parse_raw(addr, out_irq);
 out:
 of_node_put(p);
 return res;
}
