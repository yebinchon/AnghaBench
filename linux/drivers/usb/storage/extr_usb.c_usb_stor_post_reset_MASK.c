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
struct us_data {int /*<<< orphan*/  dev_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct us_data* FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (struct us_data*) ; 

int FUNC3(struct usb_interface *iface)
{
	struct us_data *us = FUNC1(iface);

	/* Report the reset to the SCSI core */
	FUNC2(us);

	/*
	 * If any of the subdrivers implemented a reinitialization scheme,
	 * this is where the callback would be invoked.
	 */

	FUNC0(&us->dev_mutex);
	return 0;
}