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
struct xenpf_pcpuinfo {int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct pcpu {TYPE_1__ dev; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  KOBJ_OFFLINE ; 
 int /*<<< orphan*/  KOBJ_ONLINE ; 
 int /*<<< orphan*/  XEN_PCPU_FLAGS_ONLINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct xenpf_pcpuinfo *info,
			       struct pcpu *pcpu)
{
	if (FUNC1(info->flags) &&
	   !FUNC1(pcpu->flags)) {
		/* the pcpu is onlined */
		pcpu->flags |= XEN_PCPU_FLAGS_ONLINE;
		FUNC0(&pcpu->dev.kobj, KOBJ_ONLINE);
	} else if (!FUNC1(info->flags) &&
		    FUNC1(pcpu->flags)) {
		/* The pcpu is offlined */
		pcpu->flags &= ~XEN_PCPU_FLAGS_ONLINE;
		FUNC0(&pcpu->dev.kobj, KOBJ_OFFLINE);
	}
}