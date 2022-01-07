
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {char* name; } ;


 int SPRN_SVR ;
 unsigned int mfspr (int ) ;
 struct device_node* of_find_node_by_type (int *,char*) ;
 char* of_get_property (struct device_node*,char*,int *) ;
 int sscanf (char const*,char*,unsigned int*) ;

__attribute__((used)) static unsigned int soc_info(unsigned int *rev_h, unsigned int *rev_l)
{
 struct device_node *np;
 const char *soc_string;
 unsigned int svr;
 unsigned int soc;


 np = of_find_node_by_type(((void*)0), "cpu");
 if (!np)
  return 0;

 soc_string = of_get_property(np, "compatible", ((void*)0));
 if (!soc_string)

  soc_string = np->name;


 if ((sscanf(soc_string, "PowerPC,%u", &soc) != 1) || !soc)
  return 0;


 svr = mfspr(SPRN_SVR);
 *rev_h = (svr >> 4) & 0xf;
 *rev_l = svr & 0xf;

 return soc;
}
