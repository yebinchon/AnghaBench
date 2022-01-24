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
struct xencons_info {scalar_t__ irq; int /*<<< orphan*/  evtchn; } ;

/* Variables and functions */
 int /*<<< orphan*/  HVC_COOKIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct xencons_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xencons_info*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(void)
{
	struct xencons_info *info = FUNC1(HVC_COOKIE);
	if (info != NULL && info->irq) {
		if (!FUNC3())
			FUNC2(info);
		FUNC0(info->evtchn, info->irq);
	}
}