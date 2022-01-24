#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct xenpf_pcpuinfo {int flags; int /*<<< orphan*/  max_present; int /*<<< orphan*/  xen_cpuid; } ;
struct TYPE_2__ {struct xenpf_pcpuinfo pcpu_info; } ;
struct xen_platform_op {TYPE_1__ u; int /*<<< orphan*/  interface_version; int /*<<< orphan*/  cmd; } ;
struct pcpu {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct xen_platform_op*) ; 
 scalar_t__ FUNC1 (struct pcpu*) ; 
 int /*<<< orphan*/  XENPF_INTERFACE_VERSION ; 
 int /*<<< orphan*/  XENPF_get_cpuinfo ; 
 int XEN_PCPU_FLAGS_INVALID ; 
 struct pcpu* FUNC2 (struct xenpf_pcpuinfo*) ; 
 struct pcpu* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xenpf_pcpuinfo*,struct pcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct pcpu*) ; 

__attribute__((used)) static int FUNC6(uint32_t cpu, uint32_t *max_cpu)
{
	int ret;
	struct pcpu *pcpu = NULL;
	struct xenpf_pcpuinfo *info;
	struct xen_platform_op op = {
		.cmd                   = XENPF_get_cpuinfo,
		.interface_version     = XENPF_INTERFACE_VERSION,
		.u.pcpu_info.xen_cpuid = cpu,
	};

	ret = FUNC0(&op);
	if (ret)
		return ret;

	info = &op.u.pcpu_info;
	if (max_cpu)
		*max_cpu = info->max_present;

	pcpu = FUNC3(cpu);

	/*
	 * Only those at cpu present map has its sys interface.
	 */
	if (info->flags & XEN_PCPU_FLAGS_INVALID) {
		FUNC5(pcpu);
		return 0;
	}

	if (!pcpu) {
		pcpu = FUNC2(info);
		if (FUNC1(pcpu))
			return -ENODEV;
	} else
		FUNC4(info, pcpu);

	return 0;
}