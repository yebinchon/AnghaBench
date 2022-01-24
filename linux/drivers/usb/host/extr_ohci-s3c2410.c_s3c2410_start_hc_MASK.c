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
struct s3c2410_hcd_info {int /*<<< orphan*/  (* enable_oc ) (struct s3c2410_hcd_info*,int) ;int /*<<< orphan*/  report_oc; struct usb_hcd* hcd; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  clk ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct s3c2410_hcd_info* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  s3c2410_hcd_oc ; 
 int /*<<< orphan*/  FUNC4 (struct s3c2410_hcd_info*,int) ; 
 int /*<<< orphan*/  usb_clk ; 

__attribute__((used)) static void FUNC5(struct platform_device *dev, struct usb_hcd *hcd)
{
	struct s3c2410_hcd_info *info = FUNC2(&dev->dev);

	FUNC1(&dev->dev, "s3c2410_start_hc:\n");

	FUNC0(usb_clk);
	FUNC3(2);			/* let the bus clock stabilise */

	FUNC0(clk);

	if (info != NULL) {
		info->hcd	= hcd;
		info->report_oc = s3c2410_hcd_oc;

		if (info->enable_oc != NULL)
			(info->enable_oc)(info, 1);
	}
}