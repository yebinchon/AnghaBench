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
typedef  scalar_t__ u32 ;
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PWR_PIN_CFG ; 
 int /*<<< orphan*/  RT3883 ; 
 int /*<<< orphan*/  TX_PIN_CFG ; 
 int /*<<< orphan*/  TX_PIN_CFG_RFTR_EN ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct rt2x00_dev *rt2x00dev)
{
	u32 reg;

	FUNC0(rt2x00dev);
	FUNC3(rt2x00dev, PWR_PIN_CFG, 0);

	reg = 0;
	if (FUNC1(rt2x00dev, RT3883))
		FUNC2(&reg, TX_PIN_CFG_RFTR_EN, 1);

	FUNC3(rt2x00dev, TX_PIN_CFG, reg);
}