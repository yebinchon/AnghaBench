#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct at91_udc {TYPE_1__* caps; int /*<<< orphan*/  vbus; int /*<<< orphan*/  enabled; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* pullup ) (struct at91_udc*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_UDP_ICR ; 
 int /*<<< orphan*/  AT91_UDP_IDR ; 
 int /*<<< orphan*/  AT91_UDP_RXRSM ; 
 int /*<<< orphan*/  AT91_UDP_TXVC ; 
 int /*<<< orphan*/  AT91_UDP_TXVC_TXVDIS ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct at91_udc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct at91_udc*) ; 
 int /*<<< orphan*/  FUNC3 (struct at91_udc*) ; 
 int /*<<< orphan*/  FUNC4 (struct at91_udc*) ; 
 int /*<<< orphan*/  FUNC5 (struct at91_udc*,int) ; 

__attribute__((used)) static void FUNC6(struct at91_udc *udc, int is_on)
{
	if (!udc->enabled || !udc->vbus)
		is_on = 0;
	FUNC0("%sactive\n", is_on ? "" : "in");

	if (is_on) {
		FUNC3(udc);
		FUNC1(udc, AT91_UDP_ICR, AT91_UDP_RXRSM);
		FUNC1(udc, AT91_UDP_TXVC, 0);
	} else {
		FUNC4(udc);
		FUNC1(udc, AT91_UDP_IDR, AT91_UDP_RXRSM);
		FUNC1(udc, AT91_UDP_TXVC, AT91_UDP_TXVC_TXVDIS);
		FUNC2(udc);
	}

	if (udc->caps && udc->caps->pullup)
		udc->caps->pullup(udc, is_on);
}