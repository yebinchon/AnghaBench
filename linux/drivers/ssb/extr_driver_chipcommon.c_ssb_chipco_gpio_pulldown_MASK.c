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
typedef  int u32 ;
struct ssb_chipcommon {int /*<<< orphan*/  gpio_lock; TYPE_2__* dev; } ;
struct TYPE_3__ {int revision; } ;
struct TYPE_4__ {TYPE_1__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSB_CHIPCO_GPIOPULLDOWN ; 
 int FUNC0 (struct ssb_chipcommon*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

u32 FUNC3(struct ssb_chipcommon *cc, u32 mask, u32 value)
{
	unsigned long flags;
	u32 res = 0;

	if (cc->dev->id.revision < 20)
		return 0xffffffff;

	FUNC1(&cc->gpio_lock, flags);
	res = FUNC0(cc, SSB_CHIPCO_GPIOPULLDOWN, mask, value);
	FUNC2(&cc->gpio_lock, flags);

	return res;
}