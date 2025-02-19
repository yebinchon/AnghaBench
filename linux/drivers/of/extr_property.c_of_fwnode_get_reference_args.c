
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {unsigned int args_count; int * args; int np; } ;
struct fwnode_reference_args {unsigned int nargs; int * args; int fwnode; } ;
struct fwnode_handle {int dummy; } ;


 unsigned int NR_FWNODE_REFERENCE_ARGS ;
 int of_fwnode_handle (int ) ;
 int of_parse_phandle_with_args (int ,char const*,char const*,unsigned int,struct of_phandle_args*) ;
 int of_parse_phandle_with_fixed_args (int ,char const*,unsigned int,unsigned int,struct of_phandle_args*) ;
 int to_of_node (struct fwnode_handle const*) ;

__attribute__((used)) static int
of_fwnode_get_reference_args(const struct fwnode_handle *fwnode,
        const char *prop, const char *nargs_prop,
        unsigned int nargs, unsigned int index,
        struct fwnode_reference_args *args)
{
 struct of_phandle_args of_args;
 unsigned int i;
 int ret;

 if (nargs_prop)
  ret = of_parse_phandle_with_args(to_of_node(fwnode), prop,
       nargs_prop, index, &of_args);
 else
  ret = of_parse_phandle_with_fixed_args(to_of_node(fwnode), prop,
             nargs, index, &of_args);
 if (ret < 0)
  return ret;
 if (!args)
  return 0;

 args->nargs = of_args.args_count;
 args->fwnode = of_fwnode_handle(of_args.np);

 for (i = 0; i < NR_FWNODE_REFERENCE_ARGS; i++)
  args->args[i] = i < of_args.args_count ? of_args.args[i] : 0;

 return 0;
}
