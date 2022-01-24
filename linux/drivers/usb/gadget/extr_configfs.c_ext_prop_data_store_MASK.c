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
struct TYPE_2__ {int /*<<< orphan*/  ci_parent; } ;
struct usb_os_desc_ext_prop {char* data; size_t data_len; scalar_t__ type; TYPE_1__ item; } ;
struct usb_os_desc {size_t ext_prop_len; scalar_t__ opts_mutex; } ;
struct config_item {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ USB_EXT_PROP_UNICODE ; 
 scalar_t__ USB_EXT_PROP_UNICODE_ENV ; 
 scalar_t__ USB_EXT_PROP_UNICODE_LINK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct usb_os_desc* FUNC4 (int /*<<< orphan*/ ) ; 
 struct usb_os_desc_ext_prop* FUNC5 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC6(struct config_item *item,
				   const char *page, size_t len)
{
	struct usb_os_desc_ext_prop *ext_prop = FUNC5(item);
	struct usb_os_desc *desc = FUNC4(ext_prop->item.ci_parent);
	char *new_data;
	size_t ret_len = len;

	if (page[len - 1] == '\n' || page[len - 1] == '\0')
		--len;
	new_data = FUNC1(page, len, GFP_KERNEL);
	if (!new_data)
		return -ENOMEM;

	if (desc->opts_mutex)
		FUNC2(desc->opts_mutex);
	FUNC0(ext_prop->data);
	ext_prop->data = new_data;
	desc->ext_prop_len -= ext_prop->data_len;
	ext_prop->data_len = len;
	desc->ext_prop_len += ext_prop->data_len;
	if (ext_prop->type == USB_EXT_PROP_UNICODE ||
	    ext_prop->type == USB_EXT_PROP_UNICODE_ENV ||
	    ext_prop->type == USB_EXT_PROP_UNICODE_LINK) {
		desc->ext_prop_len -= ext_prop->data_len;
		ext_prop->data_len <<= 1;
		ext_prop->data_len += 2;
		desc->ext_prop_len += ext_prop->data_len;
	}
	if (desc->opts_mutex)
		FUNC3(desc->opts_mutex);
	return ret_len;
}