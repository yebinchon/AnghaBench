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
struct usb_skel {int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  errors; } ;
struct usb_interface {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPIPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct usb_skel* FUNC1 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC2(struct usb_interface *intf)
{
	struct usb_skel *dev = FUNC1(intf);

	/* we are sure no URBs are active - no locking needed */
	dev->errors = -EPIPE;
	FUNC0(&dev->io_mutex);

	return 0;
}