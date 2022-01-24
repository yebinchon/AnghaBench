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
struct mt7601u_dev {int /*<<< orphan*/  tx_tasklet; int /*<<< orphan*/  rx_tasklet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mt7601u_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mt7601u_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mt7601u_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct mt7601u_dev *dev)
{
	FUNC2(dev);

	FUNC3(&dev->rx_tasklet);

	FUNC0(dev);
	FUNC1(dev);

	FUNC3(&dev->tx_tasklet);
}