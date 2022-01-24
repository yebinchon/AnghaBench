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
struct usb_gadget {int dummy; } ;
struct s3c2410_udc {int /*<<< orphan*/ * driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct s3c2410_udc*) ; 
 struct s3c2410_udc* FUNC1 (struct usb_gadget*) ; 

__attribute__((used)) static int FUNC2(struct usb_gadget *g)
{
	struct s3c2410_udc *udc = FUNC1(g);

	udc->driver = NULL;

	/* Disable udc */
	FUNC0(udc);

	return 0;
}