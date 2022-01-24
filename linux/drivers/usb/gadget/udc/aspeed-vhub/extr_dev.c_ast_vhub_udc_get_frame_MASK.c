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
struct usb_gadget {int dummy; } ;
struct ast_vhub_dev {TYPE_1__* vhub; } ;
struct TYPE_2__ {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ AST_VHUB_USBSTS ; 
 int FUNC0 (scalar_t__) ; 
 struct ast_vhub_dev* FUNC1 (struct usb_gadget*) ; 

__attribute__((used)) static int FUNC2(struct usb_gadget* gadget)
{
	struct ast_vhub_dev *d = FUNC1(gadget);

	return (FUNC0(d->vhub->regs + AST_VHUB_USBSTS) >> 16) & 0x7ff;
}