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
struct bcm63xx_udc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  USBD_CONTROL_FIFO_RESET_MASK ; 
 int /*<<< orphan*/  USBD_CONTROL_REG ; 
 int /*<<< orphan*/  FUNC0 (struct bcm63xx_udc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm63xx_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm63xx_udc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct bcm63xx_udc *udc, int ep_num)
{
	u32 val;

	FUNC0(udc, ep_num);

	val = FUNC1(udc, USBD_CONTROL_REG);
	val |= USBD_CONTROL_FIFO_RESET_MASK;
	FUNC2(udc, val, USBD_CONTROL_REG);
	FUNC1(udc, USBD_CONTROL_REG);
}