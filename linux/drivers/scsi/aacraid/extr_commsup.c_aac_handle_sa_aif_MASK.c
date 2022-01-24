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
typedef  int u32 ;
struct fib {int hbacmd_size; } ;
struct aac_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  IDR; } ;

/* Variables and functions */
 TYPE_1__ MUnit ; 
#define  SA_AIF_BPCFG_CHANGE 133 
#define  SA_AIF_BPSTAT_CHANGE 132 
#define  SA_AIF_HARDWARE 131 
#define  SA_AIF_HOTPLUG 130 
#define  SA_AIF_LDEV_CHANGE 129 
#define  SA_AIF_PDEV_CHANGE 128 
 int /*<<< orphan*/  FUNC0 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int FUNC2 (struct aac_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct aac_dev *dev, struct fib *fibptr)
{
	int i;
	u32 events = 0;

	if (fibptr->hbacmd_size & SA_AIF_HOTPLUG)
		events = SA_AIF_HOTPLUG;
	else if (fibptr->hbacmd_size & SA_AIF_HARDWARE)
		events = SA_AIF_HARDWARE;
	else if (fibptr->hbacmd_size & SA_AIF_PDEV_CHANGE)
		events = SA_AIF_PDEV_CHANGE;
	else if (fibptr->hbacmd_size & SA_AIF_LDEV_CHANGE)
		events = SA_AIF_LDEV_CHANGE;
	else if (fibptr->hbacmd_size & SA_AIF_BPSTAT_CHANGE)
		events = SA_AIF_BPSTAT_CHANGE;
	else if (fibptr->hbacmd_size & SA_AIF_BPCFG_CHANGE)
		events = SA_AIF_BPCFG_CHANGE;

	switch (events) {
	case SA_AIF_HOTPLUG:
	case SA_AIF_HARDWARE:
	case SA_AIF_PDEV_CHANGE:
	case SA_AIF_LDEV_CHANGE:
	case SA_AIF_BPCFG_CHANGE:

		FUNC0(dev);

		break;

	case SA_AIF_BPSTAT_CHANGE:
		/* currently do nothing */
		break;
	}

	for (i = 1; i <= 10; ++i) {
		events = FUNC2(dev, MUnit.IDR);
		if (events & (1<<23)) {
			FUNC1(" AIF not cleared by firmware - %d/%d)\n",
				i, 10);
			FUNC3(1);
		}
	}
}