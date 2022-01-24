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
typedef  scalar_t__ u8 ;
struct TYPE_2__ {int /*<<< orphan*/  ci_parent; } ;
struct usb_os_desc_ext_prop {scalar_t__ type; int data_len; TYPE_1__ item; } ;
struct usb_os_desc {scalar_t__ opts_mutex; } ;
struct config_item {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ USB_EXT_PROP_BE32 ; 
 scalar_t__ USB_EXT_PROP_BINARY ; 
 scalar_t__ USB_EXT_PROP_LE32 ; 
 scalar_t__ USB_EXT_PROP_UNICODE ; 
 scalar_t__ USB_EXT_PROP_UNICODE_ENV ; 
 scalar_t__ USB_EXT_PROP_UNICODE_LINK ; 
 scalar_t__ USB_EXT_PROP_UNICODE_MULTI ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct usb_os_desc* FUNC3 (int /*<<< orphan*/ ) ; 
 struct usb_os_desc_ext_prop* FUNC4 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC5(struct config_item *item,
				   const char *page, size_t len)
{
	struct usb_os_desc_ext_prop *ext_prop = FUNC4(item);
	struct usb_os_desc *desc = FUNC3(ext_prop->item.ci_parent);
	u8 type;
	int ret;

	if (desc->opts_mutex)
		FUNC1(desc->opts_mutex);
	ret = FUNC0(page, 0, &type);
	if (ret)
		goto end;
	if (type < USB_EXT_PROP_UNICODE || type > USB_EXT_PROP_UNICODE_MULTI) {
		ret = -EINVAL;
		goto end;
	}

	if ((ext_prop->type == USB_EXT_PROP_BINARY ||
	    ext_prop->type == USB_EXT_PROP_LE32 ||
	    ext_prop->type == USB_EXT_PROP_BE32) &&
	    (type == USB_EXT_PROP_UNICODE ||
	    type == USB_EXT_PROP_UNICODE_ENV ||
	    type == USB_EXT_PROP_UNICODE_LINK))
		ext_prop->data_len <<= 1;
	else if ((ext_prop->type == USB_EXT_PROP_UNICODE ||
		   ext_prop->type == USB_EXT_PROP_UNICODE_ENV ||
		   ext_prop->type == USB_EXT_PROP_UNICODE_LINK) &&
		   (type == USB_EXT_PROP_BINARY ||
		   type == USB_EXT_PROP_LE32 ||
		   type == USB_EXT_PROP_BE32))
		ext_prop->data_len >>= 1;
	ext_prop->type = type;
	ret = len;

end:
	if (desc->opts_mutex)
		FUNC2(desc->opts_mutex);
	return ret;
}