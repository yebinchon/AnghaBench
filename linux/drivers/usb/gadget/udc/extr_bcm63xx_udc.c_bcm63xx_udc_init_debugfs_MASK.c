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
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct bcm63xx_udc {struct dentry* debugfs_root; TYPE_1__ gadget; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_USB_GADGET_DEBUG_FS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bcm63xx_iudma_dbg_fops ; 
 int /*<<< orphan*/  bcm63xx_usbd_dbg_fops ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct dentry*,struct bcm63xx_udc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct bcm63xx_udc *udc)
{
	struct dentry *root;

	if (!FUNC0(CONFIG_USB_GADGET_DEBUG_FS))
		return;

	root = FUNC1(udc->gadget.name, NULL);
	udc->debugfs_root = root;

	FUNC2("usbd", 0400, root, udc, &bcm63xx_usbd_dbg_fops);
	FUNC2("iudma", 0400, root, udc, &bcm63xx_iudma_dbg_fops);
}