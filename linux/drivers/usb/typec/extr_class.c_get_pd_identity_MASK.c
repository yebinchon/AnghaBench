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
struct usb_pd_identity {int dummy; } ;
struct typec_partner {struct usb_pd_identity* identity; } ;
struct typec_cable {struct usb_pd_identity* identity; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 struct typec_cable* FUNC2 (struct device*) ; 
 struct typec_partner* FUNC3 (struct device*) ; 

__attribute__((used)) static struct usb_pd_identity *FUNC4(struct device *dev)
{
	if (FUNC1(dev)) {
		struct typec_partner *partner = FUNC3(dev);

		return partner->identity;
	} else if (FUNC0(dev)) {
		struct typec_cable *cable = FUNC2(dev);

		return cable->identity;
	}
	return NULL;
}