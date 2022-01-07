
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct device_node {int dummy; } ;


 scalar_t__ NO_IRQ ;
 int be32_to_cpu (int const) ;
 scalar_t__ irq_of_parse_and_map (struct device_node*,int ) ;
 int of_device_is_compatible (struct device_node*,char*) ;
 int * of_get_property (struct device_node*,char*,int *) ;
 struct device_node* of_stdout ;
 int pr_err (char*,struct device_node*) ;
 int stdout_bc ;
 scalar_t__ stdout_irq ;

__attribute__((used)) static int find_console_handle(void)
{
 struct device_node *np = of_stdout;
 const uint32_t *iprop;





 if (!np || !of_device_is_compatible(np, "epapr,hv-byte-channel"))
  return 0;

 stdout_irq = irq_of_parse_and_map(np, 0);
 if (stdout_irq == NO_IRQ) {
  pr_err("ehv-bc: no 'interrupts' property in %pOF node\n", np);
  return 0;
 }




 iprop = of_get_property(np, "hv-handle", ((void*)0));
 if (!iprop) {
  pr_err("ehv-bc: no 'hv-handle' property in %pOFn node\n",
         np);
  return 0;
 }
 stdout_bc = be32_to_cpu(*iprop);
 return 1;
}
