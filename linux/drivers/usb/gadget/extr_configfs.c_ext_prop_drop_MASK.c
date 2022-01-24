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
struct usb_os_desc_ext_prop {scalar_t__ data_len; scalar_t__ name_len; int /*<<< orphan*/  name; int /*<<< orphan*/  entry; } ;
struct usb_os_desc {scalar_t__ opts_mutex; int /*<<< orphan*/  ext_prop_len; int /*<<< orphan*/  ext_prop_count; } ;
struct config_item {int dummy; } ;
struct config_group {int /*<<< orphan*/  cg_item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 struct usb_os_desc* FUNC5 (int /*<<< orphan*/ *) ; 
 struct usb_os_desc_ext_prop* FUNC6 (struct config_item*) ; 

__attribute__((used)) static void FUNC7(struct config_group *group, struct config_item *item)
{
	struct usb_os_desc_ext_prop *ext_prop = FUNC6(item);
	struct usb_os_desc *desc = FUNC5(&group->cg_item);

	if (desc->opts_mutex)
		FUNC3(desc->opts_mutex);
	FUNC2(&ext_prop->entry);
	--desc->ext_prop_count;
	FUNC1(ext_prop->name);
	desc->ext_prop_len -= (ext_prop->name_len + ext_prop->data_len + 14);
	if (desc->opts_mutex)
		FUNC4(desc->opts_mutex);
	FUNC0(item);
}