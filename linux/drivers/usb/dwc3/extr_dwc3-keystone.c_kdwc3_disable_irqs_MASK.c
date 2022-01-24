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
struct dwc3_keystone {int /*<<< orphan*/  usbss; } ;

/* Variables and functions */
 int /*<<< orphan*/  USBSS_IRQENABLE_SET_0 ; 
 int /*<<< orphan*/  USBSS_IRQ_COREIRQ_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct dwc3_keystone *kdwc)
{
	u32 val;

	val = FUNC0(kdwc->usbss, USBSS_IRQENABLE_SET_0);
	val &= ~USBSS_IRQ_COREIRQ_EN;
	FUNC1(kdwc->usbss, USBSS_IRQENABLE_SET_0, val);
}