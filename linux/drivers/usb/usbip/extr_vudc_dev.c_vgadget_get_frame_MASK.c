#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int tv_sec; int tv_nsec; } ;
struct vudc {TYPE_1__ start_time; } ;
struct usb_gadget {int dummy; } ;
struct timespec64 {int tv_sec; int tv_nsec; } ;

/* Variables and functions */
 int NSEC_PER_MSEC ; 
 int /*<<< orphan*/  FUNC0 (struct timespec64*) ; 
 struct vudc* FUNC1 (struct usb_gadget*) ; 

__attribute__((used)) static int FUNC2(struct usb_gadget *_gadget)
{
	struct timespec64 now;
	struct vudc *udc = FUNC1(_gadget);

	FUNC0(&now);
	return ((now.tv_sec - udc->start_time.tv_sec) * 1000 +
		(now.tv_nsec - udc->start_time.tv_nsec) / NSEC_PER_MSEC)
			& 0x7FF;
}