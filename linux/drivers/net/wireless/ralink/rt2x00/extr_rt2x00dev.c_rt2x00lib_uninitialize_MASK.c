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
struct rt2x00_dev {TYPE_2__* ops; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {TYPE_1__* lib; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* uninitialize ) (struct rt2x00_dev*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_STATE_INITIALIZED ; 
 int /*<<< orphan*/  REQUIRE_DELAYED_RFKILL ; 
 scalar_t__ FUNC0 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct rt2x00_dev *rt2x00dev)
{
	if (!FUNC4(DEVICE_STATE_INITIALIZED, &rt2x00dev->flags))
		return;

	/*
	 * Stop rfkill polling.
	 */
	if (FUNC0(rt2x00dev, REQUIRE_DELAYED_RFKILL))
		FUNC2(rt2x00dev);

	/*
	 * Allow the HW to uninitialize.
	 */
	rt2x00dev->ops->lib->uninitialize(rt2x00dev);

	/*
	 * Free allocated queue entries.
	 */
	FUNC1(rt2x00dev);
}