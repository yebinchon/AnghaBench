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
struct usb_interface_cache {int num_altsetting; struct usb_host_interface* altsetting; } ;
struct usb_host_interface {struct usb_interface_cache* string; struct usb_interface_cache* endpoint; } ;
struct kref {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_interface_cache*) ; 
 struct usb_interface_cache* FUNC1 (struct kref*) ; 

void FUNC2(struct kref *ref)
{
	struct usb_interface_cache *intfc = FUNC1(ref);
	int j;

	for (j = 0; j < intfc->num_altsetting; j++) {
		struct usb_host_interface *alt = &intfc->altsetting[j];

		FUNC0(alt->endpoint);
		FUNC0(alt->string);
	}
	FUNC0(intfc);
}