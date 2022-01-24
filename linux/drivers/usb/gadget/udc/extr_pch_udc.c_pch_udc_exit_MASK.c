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
struct pch_udc_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UDC_DEVINT_MSK ; 
 int /*<<< orphan*/  UDC_DEVIRQMSK_ADDR ; 
 int /*<<< orphan*/  UDC_EPINT_MSK_DISABLE_ALL ; 
 int /*<<< orphan*/  UDC_EPIRQMSK_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct pch_udc_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pch_udc_dev*) ; 

__attribute__((used)) static void FUNC2(struct pch_udc_dev *dev)
{
	/* mask all device interrupts */
	FUNC0(dev, UDC_DEVIRQMSK_ADDR, UDC_DEVINT_MSK);
	/* mask all ep interrupts */
	FUNC0(dev, UDC_EPIRQMSK_ADDR, UDC_EPINT_MSK_DISABLE_ALL);
	/* put device in disconnected state */
	FUNC1(dev);
}