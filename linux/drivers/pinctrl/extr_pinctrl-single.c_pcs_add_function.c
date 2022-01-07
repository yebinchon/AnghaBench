
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcs_function {unsigned int nvals; struct pcs_func_vals* vals; } ;
struct pcs_func_vals {int dummy; } ;
struct pcs_device {int dev; int pctl; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_kfree (int ,struct pcs_function*) ;
 struct pcs_function* devm_kzalloc (int ,int,int ) ;
 int pinmux_generic_add_function (int ,char const*,char const**,unsigned int,struct pcs_function*) ;

__attribute__((used)) static int pcs_add_function(struct pcs_device *pcs,
       struct pcs_function **fcn,
       const char *name,
       struct pcs_func_vals *vals,
       unsigned int nvals,
       const char **pgnames,
       unsigned int npgnames)
{
 struct pcs_function *function;
 int selector;

 function = devm_kzalloc(pcs->dev, sizeof(*function), GFP_KERNEL);
 if (!function)
  return -ENOMEM;

 function->vals = vals;
 function->nvals = nvals;

 selector = pinmux_generic_add_function(pcs->pctl, name,
            pgnames, npgnames,
            function);
 if (selector < 0) {
  devm_kfree(pcs->dev, function);
  *fcn = ((void*)0);
 } else {
  *fcn = function;
 }

 return selector;
}
