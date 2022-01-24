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
struct rt2x00_dev {int /*<<< orphan*/  flags; int /*<<< orphan*/  rxdone_tasklet; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR8_RXDONE ; 
 int /*<<< orphan*/  DEVICE_STATE_ENABLED_RADIO ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(unsigned long data)
{
	struct rt2x00_dev *rt2x00dev = (struct rt2x00_dev *)data;
	if (FUNC1(rt2x00dev))
		FUNC2(&rt2x00dev->rxdone_tasklet);
	else if (FUNC3(DEVICE_STATE_ENABLED_RADIO, &rt2x00dev->flags))
		FUNC0(rt2x00dev, CSR8_RXDONE);
}