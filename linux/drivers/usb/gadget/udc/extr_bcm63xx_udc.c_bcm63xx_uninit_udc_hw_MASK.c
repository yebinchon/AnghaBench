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
struct bcm63xx_udc {int /*<<< orphan*/  usbh_clk; int /*<<< orphan*/  usbd_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm63xx_udc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm63xx_udc*,int) ; 

__attribute__((used)) static void FUNC3(struct bcm63xx_udc *udc)
{
	FUNC2(udc, true);
	FUNC1(udc);
	FUNC2(udc, false);

	FUNC0(udc->usbd_clk);
	FUNC0(udc->usbh_clk);
}