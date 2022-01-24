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
struct usb_lcd {int /*<<< orphan*/  kref; int /*<<< orphan*/  interface; } ;
struct inode {int dummy; } ;
struct file {struct usb_lcd* private_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lcd_delete ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *file)
{
	struct usb_lcd *dev;

	dev = file->private_data;
	if (dev == NULL)
		return -ENODEV;

	/* decrement the count on our device */
	FUNC1(dev->interface);
	FUNC0(&dev->kref, lcd_delete);
	return 0;
}