#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  speed; } ;
struct s3c2410_udc {TYPE_3__* ep; TYPE_1__ gadget; } ;
struct TYPE_5__ {int maxpacket; } ;
struct TYPE_6__ {TYPE_2__ ep; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_NORMAL ; 
 int DEFAULT_POWER_STATE ; 
 int S3C2410_ENDPOINTS ; 
 int /*<<< orphan*/  S3C2410_UDC_EP_INT_EN_REG ; 
 int /*<<< orphan*/  S3C2410_UDC_INDEX_REG ; 
 int S3C2410_UDC_INT_EP0 ; 
 int /*<<< orphan*/  S3C2410_UDC_MAXP_REG ; 
 int /*<<< orphan*/  S3C2410_UDC_PWR_REG ; 
 int /*<<< orphan*/  S3C2410_UDC_P_ENABLE ; 
 int S3C2410_UDC_USBINT_RESET ; 
 int S3C2410_UDC_USBINT_SUSPEND ; 
 int /*<<< orphan*/  S3C2410_UDC_USB_INT_EN_REG ; 
 int /*<<< orphan*/  USB_SPEED_FULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct s3c2410_udc *dev)
{
	int i;

	FUNC0(DEBUG_NORMAL, "s3c2410_udc_enable called\n");

	/* dev->gadget.speed = USB_SPEED_UNKNOWN; */
	dev->gadget.speed = USB_SPEED_FULL;

	/* Set MAXP for all endpoints */
	for (i = 0; i < S3C2410_ENDPOINTS; i++) {
		FUNC2(i, S3C2410_UDC_INDEX_REG);
		FUNC2((dev->ep[i].ep.maxpacket & 0x7ff) >> 3,
				S3C2410_UDC_MAXP_REG);
	}

	/* Set default power state */
	FUNC2(DEFAULT_POWER_STATE, S3C2410_UDC_PWR_REG);

	/* Enable reset and suspend interrupt interrupts */
	FUNC2(S3C2410_UDC_USBINT_RESET | S3C2410_UDC_USBINT_SUSPEND,
			S3C2410_UDC_USB_INT_EN_REG);

	/* Enable ep0 interrupt */
	FUNC2(S3C2410_UDC_INT_EP0, S3C2410_UDC_EP_INT_EN_REG);

	/* time to say "hello, world" */
	FUNC1(S3C2410_UDC_P_ENABLE);
}