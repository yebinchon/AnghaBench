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
struct usb_otg {int /*<<< orphan*/  usb_phy; } ;
struct omap_usb {TYPE_1__* comparator; } ;
struct TYPE_2__ {int (* set_vbus ) (TYPE_1__*,int) ;} ;

/* Variables and functions */
 int ENODEV ; 
 struct omap_usb* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC2(struct usb_otg *otg, bool enabled)
{
	struct omap_usb *phy = FUNC0(otg->usb_phy);

	if (!phy->comparator)
		return -ENODEV;

	return phy->comparator->set_vbus(phy->comparator, enabled);
}