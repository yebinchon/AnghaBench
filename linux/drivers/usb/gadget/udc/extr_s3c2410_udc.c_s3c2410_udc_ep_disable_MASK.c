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
typedef  int u32 ;
struct usb_ep {int /*<<< orphan*/ * name; } ;
struct TYPE_2__ {int /*<<< orphan*/ * desc; int /*<<< orphan*/ * name; } ;
struct s3c2410_ep {int halted; int num; int /*<<< orphan*/  dev; TYPE_1__ ep; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_NORMAL ; 
 int EINVAL ; 
 int /*<<< orphan*/  ESHUTDOWN ; 
 int /*<<< orphan*/  S3C2410_UDC_EP_INT_EN_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct s3c2410_ep*,int /*<<< orphan*/ ) ; 
 struct s3c2410_ep* FUNC4 (struct usb_ep*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct usb_ep *_ep)
{
	struct s3c2410_ep *ep = FUNC4(_ep);
	unsigned long flags;
	u32 int_en_reg;

	if (!_ep || !ep->ep.desc) {
		FUNC0(DEBUG_NORMAL, "%s not enabled\n",
			_ep ? ep->ep.name : NULL);
		return -EINVAL;
	}

	FUNC2(flags);

	FUNC0(DEBUG_NORMAL, "ep_disable: %s\n", _ep->name);

	ep->ep.desc = NULL;
	ep->halted = 1;

	FUNC3(ep->dev, ep, -ESHUTDOWN);

	/* disable irqs */
	int_en_reg = FUNC5(S3C2410_UDC_EP_INT_EN_REG);
	FUNC6(int_en_reg & ~(1<<ep->num), S3C2410_UDC_EP_INT_EN_REG);

	FUNC1(flags);

	FUNC0(DEBUG_NORMAL, "%s disabled\n", _ep->name);

	return 0;
}