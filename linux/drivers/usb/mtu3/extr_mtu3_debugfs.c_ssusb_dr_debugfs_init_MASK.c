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
struct ssusb_mtk {struct dentry* dbgfs_root; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,struct dentry*,struct ssusb_mtk*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ssusb_mode_fops ; 
 int /*<<< orphan*/  ssusb_vbus_fops ; 

void FUNC1(struct ssusb_mtk *ssusb)
{
	struct dentry *root = ssusb->dbgfs_root;

	FUNC0("mode", 0644, root, ssusb, &ssusb_mode_fops);
	FUNC0("vbus", 0644, root, ssusb, &ssusb_vbus_fops);
}