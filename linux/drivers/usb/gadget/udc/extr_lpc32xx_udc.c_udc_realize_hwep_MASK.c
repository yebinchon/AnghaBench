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
struct lpc32xx_udc {int realized_eps; int /*<<< orphan*/  udp_baseaddr; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int USBD_EP_RLZED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct lpc32xx_udc *udc, u32 hwep,
			     u32 maxpacket)
{
	int to = 1000;

	FUNC7(USBD_EP_RLZED, FUNC0(udc->udp_baseaddr));
	FUNC7(hwep, FUNC2(udc->udp_baseaddr));
	udc->realized_eps |= (1 << hwep);
	FUNC7(udc->realized_eps, FUNC4(udc->udp_baseaddr));
	FUNC7(maxpacket, FUNC3(udc->udp_baseaddr));

	/* Wait until endpoint is realized in hardware */
	while ((!(FUNC6(FUNC1(udc->udp_baseaddr)) &
		  USBD_EP_RLZED)) && (to > 0))
		to--;
	if (!to)
		FUNC5(udc->dev, "EP not correctly realized in hardware\n");

	FUNC7(USBD_EP_RLZED, FUNC0(udc->udp_baseaddr));
}