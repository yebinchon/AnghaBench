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
struct config_item {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dwClockFrequency; int /*<<< orphan*/  bcdUVC; int /*<<< orphan*/  bDescriptorSubType; int /*<<< orphan*/  bDescriptorType; int /*<<< orphan*/  bLength; } ;
struct uvcg_control_header {struct config_item item; TYPE_1__ desc; } ;
struct config_group {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct config_item* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USB_DT_CS_INTERFACE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  UVC_VC_HEADER ; 
 int /*<<< orphan*/  FUNC2 (struct config_item*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct uvcg_control_header* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uvcg_control_header_type ; 

__attribute__((used)) static struct config_item *FUNC6(struct config_group *group,
						    const char *name)
{
	struct uvcg_control_header *h;

	h = FUNC5(sizeof(*h), GFP_KERNEL);
	if (!h)
		return FUNC0(-ENOMEM);

	h->desc.bLength			= FUNC1(1);
	h->desc.bDescriptorType		= USB_DT_CS_INTERFACE;
	h->desc.bDescriptorSubType	= UVC_VC_HEADER;
	h->desc.bcdUVC			= FUNC3(0x0100);
	h->desc.dwClockFrequency	= FUNC4(48000000);

	FUNC2(&h->item, name, &uvcg_control_header_type);

	return &h->item;
}