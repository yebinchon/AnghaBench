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
struct mx3fb_info {int /*<<< orphan*/  cookie; TYPE_1__* txd; struct mx3fb_data* mx3fb; } ;
struct mx3fb_data {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mx3fb_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct mx3fb_info *mx3_fbi)
{
	struct mx3fb_data *mx3fb = mx3_fbi->mx3fb;
	uint32_t enabled;
	unsigned long flags;

	if (mx3_fbi->txd == NULL)
		return;

	FUNC2(&mx3fb->lock, flags);

	enabled = FUNC1(mx3_fbi);

	FUNC3(&mx3fb->lock, flags);

	FUNC0(mx3_fbi->txd->chan);
	mx3_fbi->txd = NULL;
	mx3_fbi->cookie = -EINVAL;
}