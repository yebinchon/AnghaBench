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
struct mt7601u_dev {int /*<<< orphan*/  rx_tasklet; int /*<<< orphan*/  tx_tasklet; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct mt7601u_dev*) ; 
 int FUNC1 (struct mt7601u_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mt7601u_dev*) ; 
 int /*<<< orphan*/  mt7601u_rx_tasklet ; 
 int FUNC3 (struct mt7601u_dev*) ; 
 int /*<<< orphan*/  mt7601u_tx_tasklet ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

int FUNC5(struct mt7601u_dev *dev)
{
	int ret = -ENOMEM;

	FUNC4(&dev->tx_tasklet, mt7601u_tx_tasklet, (unsigned long) dev);
	FUNC4(&dev->rx_tasklet, mt7601u_rx_tasklet, (unsigned long) dev);

	ret = FUNC1(dev);
	if (ret)
		goto err;
	ret = FUNC0(dev);
	if (ret)
		goto err;

	ret = FUNC3(dev);
	if (ret)
		goto err;

	return 0;
err:
	FUNC2(dev);
	return ret;
}