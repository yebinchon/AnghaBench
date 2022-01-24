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
struct s3c2410_hcd_info {int /*<<< orphan*/  (* enable_oc ) (struct s3c2410_hcd_info*,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * hcd; int /*<<< orphan*/ * report_oc; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  clk ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct s3c2410_hcd_info* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct s3c2410_hcd_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb_clk ; 

__attribute__((used)) static void FUNC4(struct platform_device *dev)
{
	struct s3c2410_hcd_info *info = FUNC2(&dev->dev);

	FUNC1(&dev->dev, "s3c2410_stop_hc:\n");

	if (info != NULL) {
		info->report_oc = NULL;
		info->hcd	= NULL;

		if (info->enable_oc != NULL)
			(info->enable_oc)(info, 0);
	}

	FUNC0(clk);
	FUNC0(usb_clk);
}