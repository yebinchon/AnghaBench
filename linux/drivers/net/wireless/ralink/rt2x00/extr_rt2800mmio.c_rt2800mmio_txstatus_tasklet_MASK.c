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
struct rt2x00_dev {int /*<<< orphan*/  txstatus_tasklet; int /*<<< orphan*/  txstatus_fifo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(unsigned long data)
{
	struct rt2x00_dev *rt2x00dev = (struct rt2x00_dev *)data;

	FUNC1(rt2x00dev, 16);

	if (!FUNC0(&rt2x00dev->txstatus_fifo))
		FUNC2(&rt2x00dev->txstatus_tasklet);

}