#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  is_prepared; } ;
struct TYPE_5__ {TYPE_1__ power; scalar_t__ driver; } ;
struct usb_interface {TYPE_2__ dev; scalar_t__ needs_binding; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_interface*) ; 

__attribute__((used)) static void FUNC3(struct usb_interface *intf)
{
	int rc;

	/* Delayed unbind of an existing driver */
	if (intf->dev.driver)
		FUNC2(intf);

	/* Try to rebind the interface */
	if (!intf->dev.power.is_prepared) {
		intf->needs_binding = 0;
		rc = FUNC1(&intf->dev);
		if (rc < 0 && rc != -EPROBE_DEFER)
			FUNC0(&intf->dev, "rebind failed: %d\n", rc);
	}
}