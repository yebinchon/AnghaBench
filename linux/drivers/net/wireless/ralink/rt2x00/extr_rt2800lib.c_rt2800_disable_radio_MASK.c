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
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_SYS_CTRL ; 
 int /*<<< orphan*/  MAC_SYS_CTRL_ENABLE_RX ; 
 int /*<<< orphan*/  MAC_SYS_CTRL_ENABLE_TX ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct rt2x00_dev *rt2x00dev)
{
	u32 reg;

	FUNC0(rt2x00dev);

	/* Wait for DMA, ignore error */
	FUNC3(rt2x00dev);

	reg = FUNC1(rt2x00dev, MAC_SYS_CTRL);
	FUNC4(&reg, MAC_SYS_CTRL_ENABLE_TX, 0);
	FUNC4(&reg, MAC_SYS_CTRL_ENABLE_RX, 0);
	FUNC2(rt2x00dev, MAC_SYS_CTRL, reg);
}