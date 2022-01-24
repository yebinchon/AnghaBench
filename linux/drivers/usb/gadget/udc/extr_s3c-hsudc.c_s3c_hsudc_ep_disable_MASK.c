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
struct usb_ep {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * desc; } ;
struct s3c_hsudc_ep {int stopped; TYPE_1__ ep; int /*<<< orphan*/  bEndpointAddress; struct s3c_hsudc* dev; } ;
struct s3c_hsudc {int /*<<< orphan*/  lock; scalar_t__ regs; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ESHUTDOWN ; 
 scalar_t__ S3C_EIER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct s3c_hsudc_ep*) ; 
 struct s3c_hsudc_ep* FUNC2 (struct usb_ep*) ; 
 int /*<<< orphan*/  FUNC3 (struct s3c_hsudc_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct s3c_hsudc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct usb_ep *_ep)
{
	struct s3c_hsudc_ep *hsep = FUNC2(_ep);
	struct s3c_hsudc *hsudc = hsep->dev;
	unsigned long flags;

	if (!_ep || !hsep->ep.desc)
		return -EINVAL;

	FUNC5(&hsudc->lock, flags);

	FUNC4(hsudc, hsep->bEndpointAddress);
	FUNC0(FUNC1(hsep), hsudc->regs + S3C_EIER);

	FUNC3(hsep, -ESHUTDOWN);

	hsep->ep.desc = NULL;
	hsep->stopped = 1;

	FUNC6(&hsudc->lock, flags);
	return 0;
}