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
struct TYPE_2__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct s3c2410_hcd_info {int dummy; } ;

/* Variables and functions */
 struct s3c2410_hcd_info* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct s3c2410_hcd_info *FUNC1(struct usb_hcd *hcd)
{
	return FUNC0(hcd->self.controller);
}