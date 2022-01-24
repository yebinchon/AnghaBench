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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device_id {int dummy; } ;
struct us_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  realtek_cr_host_template ; 
 struct usb_device_id const* realtek_cr_ids ; 
 int realtek_cr_unusual_dev_list ; 
 int FUNC1 (struct us_data**,struct usb_interface*,struct usb_device_id const*,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct us_data*) ; 

__attribute__((used)) static int FUNC3(struct usb_interface *intf,
			    const struct usb_device_id *id)
{
	struct us_data *us;
	int result;

	FUNC0(&intf->dev, "Probe Realtek Card Reader!\n");

	result = FUNC1(&us, intf, id,
				 (id - realtek_cr_ids) +
				 realtek_cr_unusual_dev_list,
				 &realtek_cr_host_template);
	if (result)
		return result;

	result = FUNC2(us);

	return result;
}