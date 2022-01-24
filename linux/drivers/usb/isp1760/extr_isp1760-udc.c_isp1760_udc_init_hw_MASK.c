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
struct isp1760_udc {int /*<<< orphan*/  isp; scalar_t__ connected; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_ADDRESS ; 
 int DC_CDBGMOD_ACK ; 
 int DC_DDBGMODIN_ACK ; 
 int DC_DDBGMODOUT_ACK_NYET ; 
 int DC_DEVEN ; 
 int DC_IEBRST ; 
 int DC_IEHS_STA ; 
 int DC_IEP0SETUP ; 
 int FUNC0 (int) ; 
 int DC_IERESM ; 
 int DC_IESUSP ; 
 int DC_IEVBUS ; 
 int /*<<< orphan*/  DC_INTCONF ; 
 int /*<<< orphan*/  DC_INTENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct isp1760_udc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct isp1760_udc *udc)
{
	/*
	 * The device controller currently shares its interrupt with the host
	 * controller, the DC_IRQ polarity and signaling mode are ignored. Set
	 * the to active-low level-triggered.
	 *
	 * Configure the control, in and out pipes to generate interrupts on
	 * ACK tokens only (and NYET for the out pipe). The default
	 * configuration also generates an interrupt on the first NACK token.
	 */
	FUNC2(udc, DC_INTCONF, DC_CDBGMOD_ACK | DC_DDBGMODIN_ACK |
			  DC_DDBGMODOUT_ACK_NYET);

	FUNC2(udc, DC_INTENABLE, FUNC0(7) | FUNC0(6) |
			  FUNC0(5) | FUNC0(4) | FUNC0(3) |
			  FUNC0(2) | FUNC0(1) | FUNC0(0) |
			  DC_IEP0SETUP | DC_IEVBUS | DC_IERESM | DC_IESUSP |
			  DC_IEHS_STA | DC_IEBRST);

	if (udc->connected)
		FUNC1(udc->isp, true);

	FUNC2(udc, DC_ADDRESS, DC_DEVEN);
}