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
struct TYPE_3__ {int /*<<< orphan*/  info; int /*<<< orphan*/  ncpus; } ;
struct TYPE_4__ {TYPE_1__ mc_physcpuinfo; } ;
struct xen_mc {TYPE_2__ u; int /*<<< orphan*/  cmd; } ;
struct mcinfo_logical_cpu {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct xen_mc*) ; 
 int /*<<< orphan*/  VIRQ_MCA ; 
 int /*<<< orphan*/  XEN_MC_physcpuinfo ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_physinfo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xen_mc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ncpus ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xen_mce_interrupt ; 

__attribute__((used)) static int FUNC7(void)
{
	int ret;
	struct xen_mc mc_op;

	FUNC4(&mc_op, 0, sizeof(struct xen_mc));

	/* Fetch physical CPU Numbers */
	mc_op.cmd = XEN_MC_physcpuinfo;
	FUNC6(mc_op.u.mc_physcpuinfo.info, g_physinfo);
	ret = FUNC0(&mc_op);
	if (ret) {
		FUNC5("Failed to get CPU numbers\n");
		return ret;
	}

	/* Fetch each CPU Physical Info for later reference*/
	ncpus = mc_op.u.mc_physcpuinfo.ncpus;
	g_physinfo = FUNC2(ncpus, sizeof(struct mcinfo_logical_cpu),
			     GFP_KERNEL);
	if (!g_physinfo)
		return -ENOMEM;
	FUNC6(mc_op.u.mc_physcpuinfo.info, g_physinfo);
	ret = FUNC0(&mc_op);
	if (ret) {
		FUNC5("Failed to get CPU info\n");
		FUNC3(g_physinfo);
		return ret;
	}

	ret  = FUNC1(VIRQ_MCA, 0,
				       xen_mce_interrupt, 0, "mce", NULL);
	if (ret < 0) {
		FUNC5("Failed to bind virq\n");
		FUNC3(g_physinfo);
		return ret;
	}

	return 0;
}