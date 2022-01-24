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
struct mt7601u_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_MAC_SYS_CTRL ; 
 int MT_MAC_SYS_CTRL_RESET_BBP ; 
 int MT_MAC_SYS_CTRL_RESET_CSR ; 
 int /*<<< orphan*/  MT_USB_DMA_CFG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mt7601u_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct mt7601u_dev *dev)
{
	FUNC1(dev, MT_MAC_SYS_CTRL, (MT_MAC_SYS_CTRL_RESET_CSR |
					  MT_MAC_SYS_CTRL_RESET_BBP));
	FUNC1(dev, MT_USB_DMA_CFG, 0);
	FUNC0(1);
	FUNC1(dev, MT_MAC_SYS_CTRL, 0);
}