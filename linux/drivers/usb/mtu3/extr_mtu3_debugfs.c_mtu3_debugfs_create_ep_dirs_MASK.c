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
struct ssusb_mtk {int /*<<< orphan*/  dbgfs_root; } ;
struct mtu3 {int num_eps; scalar_t__ out_eps; scalar_t__ in_eps; struct ssusb_mtk* ssusb; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct dentry* FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct dentry*) ; 

__attribute__((used)) static void FUNC2(struct mtu3 *mtu)
{
	struct ssusb_mtk *ssusb = mtu->ssusb;
	struct dentry *dir_eps;
	int i;

	dir_eps = FUNC0("eps", ssusb->dbgfs_root);

	for (i = 1; i < mtu->num_eps; i++) {
		FUNC1(mtu->in_eps + i, dir_eps);
		FUNC1(mtu->out_eps + i, dir_eps);
	}
}