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
 int /*<<< orphan*/  MT_MAC_SYS_CTRL ; 
 int MT_MAC_SYS_CTRL_RESET_BBP ; 
 int MT_MAC_SYS_CTRL_RESET_CSR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct mt76x02_dev *dev)
{
	FUNC2(dev, MT_MAC_SYS_CTRL,
		MT_MAC_SYS_CTRL_RESET_CSR |
		MT_MAC_SYS_CTRL_RESET_BBP);
	FUNC0(200);
	FUNC1(dev, MT_MAC_SYS_CTRL,
		   MT_MAC_SYS_CTRL_RESET_CSR |
		   MT_MAC_SYS_CTRL_RESET_BBP);
}