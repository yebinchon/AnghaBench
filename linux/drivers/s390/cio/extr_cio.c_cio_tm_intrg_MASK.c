#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct subchannel {int /*<<< orphan*/  schid; } ;
struct TYPE_4__ {int /*<<< orphan*/  b; } ;
struct TYPE_5__ {TYPE_1__ tm; } ;
struct TYPE_6__ {TYPE_2__ orb; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 TYPE_3__* FUNC0 (struct subchannel*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct subchannel *sch)
{
	int cc;

	if (!FUNC0(sch)->orb.tm.b)
		return -EINVAL;
	cc = FUNC1(sch->schid);
	switch (cc) {
	case 0:
	case 2:
		return 0;
	case 1:
		return -EBUSY;
	default:
		return -ENODEV;
	}
}