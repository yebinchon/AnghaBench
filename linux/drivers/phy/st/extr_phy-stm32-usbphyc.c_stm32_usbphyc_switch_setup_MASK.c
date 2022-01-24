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
struct stm32_usbphyc {scalar_t__ switch_setup; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ STM32_USBPHYC_MISC ; 
 int /*<<< orphan*/  SWITHOST ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct stm32_usbphyc *usbphyc,
				       u32 utmi_switch)
{
	if (!utmi_switch)
		FUNC0(usbphyc->base + STM32_USBPHYC_MISC,
				       SWITHOST);
	else
		FUNC1(usbphyc->base + STM32_USBPHYC_MISC,
				       SWITHOST);
	usbphyc->switch_setup = utmi_switch;
}