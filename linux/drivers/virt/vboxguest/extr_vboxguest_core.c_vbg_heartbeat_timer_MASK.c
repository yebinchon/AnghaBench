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
struct vbg_dev {int /*<<< orphan*/  heartbeat_interval_ms; int /*<<< orphan*/  heartbeat_timer; int /*<<< orphan*/  guest_heartbeat_req; } ;
struct timer_list {int dummy; } ;

/* Variables and functions */
 struct vbg_dev* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct vbg_dev* gdev ; 
 int /*<<< orphan*/  heartbeat_timer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vbg_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct vbg_dev *gdev = FUNC0(gdev, t, heartbeat_timer);

	FUNC3(gdev, gdev->guest_heartbeat_req);
	FUNC1(&gdev->heartbeat_timer,
		  FUNC2(gdev->heartbeat_interval_ms));
}