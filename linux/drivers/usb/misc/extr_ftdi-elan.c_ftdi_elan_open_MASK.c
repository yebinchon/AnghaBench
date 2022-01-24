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
struct usb_ftdi {int /*<<< orphan*/  sw_lock; } ;
struct inode {int dummy; } ;
struct file {struct usb_ftdi* private_data; } ;

/* Variables and functions */
 int EINTR ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ftdi_elan_driver ; 
 int /*<<< orphan*/  FUNC1 (struct usb_ftdi*) ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 struct usb_interface* FUNC4 (int /*<<< orphan*/ *,int) ; 
 struct usb_ftdi* FUNC5 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *file)
{
	int subminor;
	struct usb_interface *interface;

	subminor = FUNC2(inode);
	interface = FUNC4(&ftdi_elan_driver, subminor);

	if (!interface) {
		FUNC3("can't find device for minor %d\n", subminor);
		return -ENODEV;
	} else {
		struct usb_ftdi *ftdi = FUNC5(interface);
		if (!ftdi) {
			return -ENODEV;
		} else {
			if (FUNC0(&ftdi->sw_lock)) {
				return -EINTR;
			} else {
				FUNC1(ftdi);
				file->private_data = ftdi;
				return 0;
			}
		}
	}
}