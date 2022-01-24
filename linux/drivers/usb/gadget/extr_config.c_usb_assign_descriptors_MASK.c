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
struct usb_gadget {int dummy; } ;
struct usb_function {void* ssp_descriptors; void* ss_descriptors; void* hs_descriptors; void* fs_descriptors; TYPE_1__* config; } ;
struct usb_descriptor_header {int dummy; } ;
struct TYPE_4__ {struct usb_gadget* gadget; } ;
struct TYPE_3__ {TYPE_2__* cdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct usb_gadget*) ; 
 scalar_t__ FUNC1 (struct usb_gadget*) ; 
 scalar_t__ FUNC2 (struct usb_gadget*) ; 
 void* FUNC3 (struct usb_descriptor_header**) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_function*) ; 

int FUNC5(struct usb_function *f,
		struct usb_descriptor_header **fs,
		struct usb_descriptor_header **hs,
		struct usb_descriptor_header **ss,
		struct usb_descriptor_header **ssp)
{
	struct usb_gadget *g = f->config->cdev->gadget;

	if (fs) {
		f->fs_descriptors = FUNC3(fs);
		if (!f->fs_descriptors)
			goto err;
	}
	if (hs && FUNC0(g)) {
		f->hs_descriptors = FUNC3(hs);
		if (!f->hs_descriptors)
			goto err;
	}
	if (ss && FUNC1(g)) {
		f->ss_descriptors = FUNC3(ss);
		if (!f->ss_descriptors)
			goto err;
	}
	if (ssp && FUNC2(g)) {
		f->ssp_descriptors = FUNC3(ssp);
		if (!f->ssp_descriptors)
			goto err;
	}
	return 0;
err:
	FUNC4(f);
	return -ENOMEM;
}