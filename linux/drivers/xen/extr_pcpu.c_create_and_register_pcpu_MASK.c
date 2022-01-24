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
struct xenpf_pcpuinfo {int flags; int /*<<< orphan*/  xen_cpuid; } ;
struct pcpu {int flags; int /*<<< orphan*/  list; int /*<<< orphan*/  cpu_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct pcpu* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int XEN_PCPU_FLAGS_INVALID ; 
 struct pcpu* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct pcpu*) ; 
 int /*<<< orphan*/  xen_pcpus ; 

__attribute__((used)) static struct pcpu *FUNC6(struct xenpf_pcpuinfo *info)
{
	struct pcpu *pcpu;
	int err;

	if (info->flags & XEN_PCPU_FLAGS_INVALID)
		return FUNC0(-ENODEV);

	pcpu = FUNC2(sizeof(struct pcpu), GFP_KERNEL);
	if (!pcpu)
		return FUNC0(-ENOMEM);

	FUNC1(&pcpu->list);
	pcpu->cpu_id = info->xen_cpuid;
	pcpu->flags = info->flags;

	/* Need hold on xen_pcpu_lock before pcpu list manipulations */
	FUNC3(&pcpu->list, &xen_pcpus);

	err = FUNC5(pcpu);
	if (err) {
		FUNC4("Failed to register pcpu%u\n", info->xen_cpuid);
		return FUNC0(-ENOENT);
	}

	return pcpu;
}