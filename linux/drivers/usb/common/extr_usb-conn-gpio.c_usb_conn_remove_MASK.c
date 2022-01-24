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
struct usb_conn_info {scalar_t__ last_role; int /*<<< orphan*/  role_sw; int /*<<< orphan*/  vbus; int /*<<< orphan*/  dw_det; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ USB_ROLE_HOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct usb_conn_info* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct usb_conn_info *info = FUNC1(pdev);

	FUNC0(&info->dw_det);

	if (info->last_role == USB_ROLE_HOST)
		FUNC2(info->vbus);

	FUNC3(info->role_sw);

	return 0;
}