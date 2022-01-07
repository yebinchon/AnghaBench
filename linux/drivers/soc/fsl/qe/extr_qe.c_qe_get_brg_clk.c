
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;


 int CLK_GRAN ;
 unsigned int CLK_GRAN_LIMIT ;
 int brg_clk ;
 int* of_get_property (struct device_node*,char*,int*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* qe_get_device_node () ;

unsigned int qe_get_brg_clk(void)
{
 struct device_node *qe;
 int size;
 const u32 *prop;
 unsigned int mod;

 if (brg_clk)
  return brg_clk;

 qe = qe_get_device_node();
 if (!qe)
  return brg_clk;

 prop = of_get_property(qe, "brg-frequency", &size);
 if (prop && size == sizeof(*prop))
  brg_clk = *prop;

 of_node_put(qe);


 mod = brg_clk % CLK_GRAN;
 if (mod) {
  if (mod < CLK_GRAN_LIMIT)
   brg_clk -= mod;
  else if (mod > (CLK_GRAN - CLK_GRAN_LIMIT))
   brg_clk += CLK_GRAN - mod;
 }

 return brg_clk;
}
