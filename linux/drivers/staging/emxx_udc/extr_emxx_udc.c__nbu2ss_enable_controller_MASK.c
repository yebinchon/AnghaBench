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
struct nbu2ss_udc {int udc_enabled; TYPE_1__* p_regs; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  USB_INT_ENA; int /*<<< orphan*/  USB_CONTROL; int /*<<< orphan*/  UTMI_CHARACTER_1; int /*<<< orphan*/  EPCTR; int /*<<< orphan*/  AHBMCTR; int /*<<< orphan*/  AHBSCTR; } ;

/* Variables and functions */
 int DIRPD ; 
 int EINVAL ; 
 int /*<<< orphan*/  EPC_DIRPD_DISABLE_TIME ; 
 int EPC_PLL_LOCK_COUNT ; 
 int EPC_RST ; 
 int EPC_RST_DISABLE_TIME ; 
 int HBUSREQ_MODE ; 
 int HTRANS_MODE ; 
 int INT_SEL ; 
 int PLL_LOCK ; 
 int SOF_RCV ; 
 int USB_INT_EN_BIT ; 
 int USB_SQUSET ; 
 int WAIT_MODE ; 
 int WBURST_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nbu2ss_udc*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct nbu2ss_udc *udc)
{
	int	waitcnt = 0;

	if (udc->udc_enabled)
		return 0;

	/* Reset */
	FUNC1(&udc->p_regs->EPCTR, (DIRPD | EPC_RST));
	FUNC7(EPC_RST_DISABLE_TIME);	/* 1us wait */

	FUNC0(&udc->p_regs->EPCTR, DIRPD);
	FUNC6(EPC_DIRPD_DISABLE_TIME);	/* 1ms wait */

	FUNC0(&udc->p_regs->EPCTR, EPC_RST);

	FUNC4(&udc->p_regs->AHBSCTR, WAIT_MODE);

		FUNC4(&udc->p_regs->AHBMCTR,
			       HBUSREQ_MODE | HTRANS_MODE | WBURST_TYPE);

	while (!(FUNC3(&udc->p_regs->EPCTR) & PLL_LOCK)) {
		waitcnt++;
		FUNC7(1);	/* 1us wait */
		if (waitcnt == EPC_PLL_LOCK_COUNT) {
			FUNC5(udc->dev, "*** Reset Cancel failed\n");
			return -EINVAL;
		}
	}

		FUNC1(&udc->p_regs->UTMI_CHARACTER_1, USB_SQUSET);

	FUNC1(&udc->p_regs->USB_CONTROL, (INT_SEL | SOF_RCV));

	/* EP0 */
	FUNC2(udc);

	/* USB Interrupt Enable */
	FUNC1(&udc->p_regs->USB_INT_ENA, USB_INT_EN_BIT);

	udc->udc_enabled = true;

	return 0;
}