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
struct mt76x02_dev {int /*<<< orphan*/  aggr_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MT_TX_STAT_FIFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*) ; 

int FUNC4(struct mt76x02_dev *dev)
{
	int i;

	for (i = 0; i < 16; i++)
		FUNC2(dev, FUNC0(i));

	for (i = 0; i < 16; i++)
		FUNC2(dev, MT_TX_STAT_FIFO);

	FUNC1(dev->aggr_stats, 0, sizeof(dev->aggr_stats));
	FUNC3(dev);

	return 0;
}