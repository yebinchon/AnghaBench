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
struct usb_hcd {int dummy; } ;
struct sl811 {int /*<<< orphan*/  addr_reg; int /*<<< orphan*/  data_reg; } ;
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 struct sl811* FUNC0 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC2 (struct platform_device*) ; 
 struct resource* FUNC3 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sl811*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_hcd*) ; 

__attribute__((used)) static int
FUNC7(struct platform_device *dev)
{
	struct usb_hcd		*hcd = FUNC2(dev);
	struct sl811		*sl811 = FUNC0(hcd);
	struct resource		*res;

	FUNC4(sl811);
	FUNC6(hcd);

	/* some platforms may use IORESOURCE_IO */
	res = FUNC3(dev, IORESOURCE_MEM, 1);
	if (res)
		FUNC1(sl811->data_reg);

	res = FUNC3(dev, IORESOURCE_MEM, 0);
	if (res)
		FUNC1(sl811->addr_reg);

	FUNC5(hcd);
	return 0;
}