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
struct usb_interface {int dummy; } ;
struct ufx_data {int virtualized; scalar_t__ fb_count; int /*<<< orphan*/  kref; int /*<<< orphan*/  free_framebuffer_work; int /*<<< orphan*/  usb_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ufx_free ; 
 struct ufx_data* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct usb_interface *interface)
{
	struct ufx_data *dev;

	dev = FUNC4(interface);

	FUNC2("USB disconnect starting\n");

	/* we virtualize until all fb clients release. Then we free */
	dev->virtualized = true;

	/* When non-active we'll update virtual framebuffer, but no new urbs */
	FUNC0(&dev->usb_active, 0);

	FUNC5(interface, NULL);

	/* if clients still have us open, will be freed on last close */
	if (dev->fb_count == 0)
		FUNC3(&dev->free_framebuffer_work, 0);

	/* release reference taken by kref_init in probe() */
	FUNC1(&dev->kref, ufx_free);

	/* consider ufx_data freed */
}