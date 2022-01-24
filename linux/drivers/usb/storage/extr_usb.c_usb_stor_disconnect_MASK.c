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
struct us_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct us_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct us_data*) ; 
 struct us_data* FUNC2 (struct usb_interface*) ; 

void FUNC3(struct usb_interface *intf)
{
	struct us_data *us = FUNC2(intf);

	FUNC0(us);
	FUNC1(us);
}