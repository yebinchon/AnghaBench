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
struct mt76x02_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_RX_STAT_0 ; 
 int /*<<< orphan*/  MT_RX_STAT_1 ; 
 int /*<<< orphan*/  MT_RX_STAT_2 ; 
 int /*<<< orphan*/  MT_TX_STA_0 ; 
 int /*<<< orphan*/  MT_TX_STA_1 ; 
 int /*<<< orphan*/  MT_TX_STA_2 ; 
 int /*<<< orphan*/  FUNC0 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct mt76x02_dev *dev)
{
	FUNC0(dev, MT_RX_STAT_0);
	FUNC0(dev, MT_RX_STAT_1);
	FUNC0(dev, MT_RX_STAT_2);
	FUNC0(dev, MT_TX_STA_0);
	FUNC0(dev, MT_TX_STA_1);
	FUNC0(dev, MT_TX_STA_2);
}