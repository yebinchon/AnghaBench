#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct xenpf_symdata {scalar_t__ namelen; scalar_t__ symnum; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {struct xenpf_symdata symdata; } ;
struct TYPE_4__ {TYPE_1__ u; } ;
struct xensyms {scalar_t__ namelen; TYPE_2__ op; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct xensyms *xs)
{
	int ret;
	struct xenpf_symdata *symdata = &xs->op.u.symdata;
	uint64_t symnum;

	FUNC3(xs->name, 0, xs->namelen);
	symdata->namelen = xs->namelen;

	symnum = symdata->symnum;

	ret = FUNC0(&xs->op);
	if (ret < 0)
		return ret;

	/*
	 * If hypervisor's symbol didn't fit into the buffer then allocate
	 * a larger buffer and try again.
	 */
	if (FUNC5(symdata->namelen > xs->namelen)) {
		FUNC1(xs->name);

		xs->namelen = symdata->namelen;
		xs->name = FUNC2(xs->namelen, GFP_KERNEL);
		if (!xs->name)
			return -ENOMEM;

		FUNC4(symdata->name, xs->name);
		symdata->symnum--; /* Rewind */

		ret = FUNC0(&xs->op);
		if (ret < 0)
			return ret;
	}

	if (symdata->symnum == symnum)
		/* End of symbols */
		return 1;

	return 0;
}