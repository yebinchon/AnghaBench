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
struct timespec64 {int tv_nsec; } ;

/* Variables and functions */
 int NSEC_PER_MSEC ; 
 int /*<<< orphan*/  FUNC0 (struct timespec64*) ; 

__attribute__((used)) static int FUNC1(struct usb_gadget *_gadget)
{
	struct timespec64 ts64;

	FUNC0(&ts64);
	return ts64.tv_nsec / NSEC_PER_MSEC;
}