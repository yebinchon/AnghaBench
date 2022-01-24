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
struct rtd_private {scalar_t__ lcfg; } ;
struct comedi_device {scalar_t__ mmio; struct rtd_private* private; } ;

/* Variables and functions */
 scalar_t__ LAS0_BOARD_RESET ; 
 scalar_t__ LAS0_CLEAR ; 
 scalar_t__ LAS0_IT ; 
 scalar_t__ PLX_REG_INTCSR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev)
{
	struct rtd_private *devpriv = dev->private;

	FUNC2(0, dev->mmio + LAS0_BOARD_RESET);
	FUNC1(100, 1000);	/* needed? */
	FUNC2(0, devpriv->lcfg + PLX_REG_INTCSR);
	FUNC3(0, dev->mmio + LAS0_IT);
	FUNC3(~0, dev->mmio + LAS0_CLEAR);
	FUNC0(dev->mmio + LAS0_CLEAR);
}