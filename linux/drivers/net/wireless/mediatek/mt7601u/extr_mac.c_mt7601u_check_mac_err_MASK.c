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
typedef  int u32 ;
struct mt7601u_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  MT_MAC_SYS_CTRL ; 
 int /*<<< orphan*/  MT_MAC_SYS_CTRL_RESET_CSR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct mt7601u_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7601u_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mt7601u_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct mt7601u_dev *dev)
{
	u32 val = FUNC2(dev, 0x10f4);

	if (!(val & FUNC0(29)) || !(val & (FUNC0(7) | FUNC0(5))))
		return;

	FUNC1(dev->dev, "Error: MAC specific condition occurred\n");

	FUNC4(dev, MT_MAC_SYS_CTRL, MT_MAC_SYS_CTRL_RESET_CSR);
	FUNC5(10);
	FUNC3(dev, MT_MAC_SYS_CTRL, MT_MAC_SYS_CTRL_RESET_CSR);
}