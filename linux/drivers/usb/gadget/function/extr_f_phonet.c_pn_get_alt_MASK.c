#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct usb_function {int dummy; } ;
struct phonet_port {int /*<<< orphan*/  lock; int /*<<< orphan*/ * usb; } ;
struct f_phonet {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {unsigned int bInterfaceNumber; } ;
struct TYPE_3__ {unsigned int bInterfaceNumber; } ;

/* Variables and functions */
 int EINVAL ; 
 struct f_phonet* FUNC0 (struct usb_function*) ; 
 struct phonet_port* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__ pn_control_intf_desc ; 
 TYPE_1__ pn_data_intf_desc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct usb_function *f, unsigned intf)
{
	struct f_phonet *fp = FUNC0(f);

	if (intf == pn_control_intf_desc.bInterfaceNumber)
		return 0;

	if (intf == pn_data_intf_desc.bInterfaceNumber) {
		struct phonet_port *port = FUNC1(fp->dev);
		u8 alt;

		FUNC2(&port->lock);
		alt = port->usb != NULL;
		FUNC3(&port->lock);
		return alt;
	}

	return -EINVAL;
}