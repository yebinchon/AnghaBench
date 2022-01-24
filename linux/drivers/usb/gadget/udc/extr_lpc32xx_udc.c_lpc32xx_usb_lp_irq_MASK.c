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
struct lpc32xx_udc {int enabled_devints; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  udp_baseaddr; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_RD_ERR_STAT ; 
 int /*<<< orphan*/  DAT_RD_ERR_STAT ; 
 int ERR_INT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int USBD_DEV_STAT ; 
 int USBD_EP_FAST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct lpc32xx_udc*) ; 
 int FUNC7 (struct lpc32xx_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct lpc32xx_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *_udc)
{
	u32 tmp, devstat;
	struct lpc32xx_udc *udc = _udc;

	FUNC4(&udc->lock);

	/* Read the device status register */
	devstat = FUNC3(FUNC1(udc->udp_baseaddr));

	devstat &= ~USBD_EP_FAST;
	FUNC9(devstat, FUNC0(udc->udp_baseaddr));
	devstat = devstat & udc->enabled_devints;

	/* Device specific handling needed? */
	if (devstat & USBD_DEV_STAT)
		FUNC6(udc);

	/* Start of frame? (devstat & FRAME_INT):
	 * The frame interrupt isn't really needed for ISO support,
	 * as the driver will queue the necessary packets */

	/* Error? */
	if (devstat & ERR_INT) {
		/* All types of errors, from cable removal during transfer to
		 * misc protocol and bit errors. These are mostly for just info,
		 * as the USB hardware will work around these. If these errors
		 * happen alot, something is wrong. */
		FUNC8(udc, CMD_RD_ERR_STAT);
		tmp = FUNC7(udc, DAT_RD_ERR_STAT);
		FUNC2(udc->dev, "Device error (0x%x)!\n", tmp);
	}

	FUNC5(&udc->lock);

	return IRQ_HANDLED;
}