#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct of_phandle_args {unsigned int args_count; int /*<<< orphan*/ * args; int /*<<< orphan*/  np; } ;
struct fwnode_reference_args {unsigned int nargs; int /*<<< orphan*/ * args; int /*<<< orphan*/  fwnode; } ;
struct fwnode_handle {int dummy; } ;

/* Variables and functions */
 unsigned int NR_FWNODE_REFERENCE_ARGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,char const*,unsigned int,struct of_phandle_args*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,unsigned int,unsigned int,struct of_phandle_args*) ; 
 int /*<<< orphan*/  FUNC3 (struct fwnode_handle const*) ; 

__attribute__((used)) static int
FUNC4(const struct fwnode_handle *fwnode,
			     const char *prop, const char *nargs_prop,
			     unsigned int nargs, unsigned int index,
			     struct fwnode_reference_args *args)
{
	struct of_phandle_args of_args;
	unsigned int i;
	int ret;

	if (nargs_prop)
		ret = FUNC1(FUNC3(fwnode), prop,
						 nargs_prop, index, &of_args);
	else
		ret = FUNC2(FUNC3(fwnode), prop,
						       nargs, index, &of_args);
	if (ret < 0)
		return ret;
	if (!args)
		return 0;

	args->nargs = of_args.args_count;
	args->fwnode = FUNC0(of_args.np);

	for (i = 0; i < NR_FWNODE_REFERENCE_ARGS; i++)
		args->args[i] = i < of_args.args_count ? of_args.args[i] : 0;

	return 0;
}