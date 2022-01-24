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
struct rt2x00_dev {int dummy; } ;
typedef  enum dev_state { ____Placeholder_dev_state } dev_state ;

/* Variables and functions */
 int /*<<< orphan*/  MCU_SLEEP ; 
 int /*<<< orphan*/  MCU_WAKEUP ; 
 int STATE_AWAKE ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int FUNC1(struct rt2x00_dev *rt2x00dev,
			       enum dev_state state)
{
	if (state == STATE_AWAKE)
		FUNC0(rt2x00dev, MCU_WAKEUP, 0xff, 0, 2);
	else
		FUNC0(rt2x00dev, MCU_SLEEP, 0xff, 0xff, 2);

	return 0;
}