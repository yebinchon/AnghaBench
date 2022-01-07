
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
typedef int optee_invoke_fn ;


 int EINVAL ;
 int ENXIO ;
 int * ERR_PTR (int ) ;
 scalar_t__ of_property_read_string (struct device_node*,char*,char const**) ;
 int * optee_smccc_hvc ;
 int * optee_smccc_smc ;
 int pr_info (char*) ;
 int pr_warn (char*,...) ;
 int strcmp (char*,char const*) ;

__attribute__((used)) static optee_invoke_fn *get_invoke_func(struct device_node *np)
{
 const char *method;

 pr_info("probing for conduit method from DT.\n");

 if (of_property_read_string(np, "method", &method)) {
  pr_warn("missing \"method\" property\n");
  return ERR_PTR(-ENXIO);
 }

 if (!strcmp("hvc", method))
  return optee_smccc_hvc;
 else if (!strcmp("smc", method))
  return optee_smccc_smc;

 pr_warn("invalid \"method\" property: %s\n", method);
 return ERR_PTR(-EINVAL);
}
