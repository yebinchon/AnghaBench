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
struct wdm_device {int count; struct usb_interface* intf; int /*<<< orphan*/  (* manage_power ) (struct usb_interface*,int) ;int /*<<< orphan*/  wlock; int /*<<< orphan*/  validity; scalar_t__ rerr; scalar_t__ werr; int /*<<< orphan*/  flags; } ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct inode {int dummy; } ;
struct file {struct wdm_device* private_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WDM_DISCONNECTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int) ; 
 struct wdm_device* FUNC10 (int) ; 
 int /*<<< orphan*/  wdm_mutex ; 

__attribute__((used)) static int FUNC11(struct inode *inode, struct file *file)
{
	int minor = FUNC1(inode);
	int rv = -ENODEV;
	struct usb_interface *intf;
	struct wdm_device *desc;

	FUNC2(&wdm_mutex);
	desc = FUNC10(minor);
	if (!desc)
		goto out;

	intf = desc->intf;
	if (FUNC5(WDM_DISCONNECTING, &desc->flags))
		goto out;
	file->private_data = desc;

	rv = FUNC6(desc->intf);
	if (rv < 0) {
		FUNC0(&desc->intf->dev, "Error autopm - %d\n", rv);
		goto out;
	}

	/* using write lock to protect desc->count */
	FUNC2(&desc->wlock);
	if (!desc->count++) {
		desc->werr = 0;
		desc->rerr = 0;
		rv = FUNC8(desc->validity, GFP_KERNEL);
		if (rv < 0) {
			desc->count--;
			FUNC0(&desc->intf->dev,
				"Error submitting int urb - %d\n", rv);
			rv = FUNC9(rv);
		}
	} else {
		rv = 0;
	}
	FUNC3(&desc->wlock);
	if (desc->count == 1)
		desc->manage_power(intf, 1);
	FUNC7(desc->intf);
out:
	FUNC3(&wdm_mutex);
	return rv;
}