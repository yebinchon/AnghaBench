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
struct rt2x00_dev {int /*<<< orphan*/  txstatus_timer; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int TXSTATUS_READ_INTERVAL ; 
 int /*<<< orphan*/  TX_STATUS_READING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct rt2x00_dev *rt2x00dev)
{

	if (FUNC1(TX_STATUS_READING, &rt2x00dev->flags))
		return;

	/* Read TX_STA_FIFO register after 2 ms */
	FUNC0(&rt2x00dev->txstatus_timer,
		      2 * TXSTATUS_READ_INTERVAL,
		      HRTIMER_MODE_REL);
}