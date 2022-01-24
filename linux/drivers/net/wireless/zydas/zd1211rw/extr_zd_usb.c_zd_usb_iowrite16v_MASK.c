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
struct zd_usb {int dummy; } ;
struct zd_ioreq16 {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct zd_usb*,struct zd_ioreq16 const*,unsigned int) ; 
 int FUNC1 (struct zd_usb*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct zd_usb*) ; 

int FUNC3(struct zd_usb *usb, const struct zd_ioreq16 *ioreqs,
			unsigned int count)
{
	int r;

	FUNC2(usb);
	r = FUNC0(usb, ioreqs, count);
	if (r) {
		FUNC1(usb, 0);
		return r;
	}
	return FUNC1(usb, 50 /* ms */);
}