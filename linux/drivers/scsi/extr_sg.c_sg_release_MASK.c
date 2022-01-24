#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;
struct TYPE_5__ {scalar_t__ open_cnt; int exclude; int /*<<< orphan*/  open_rel_lock; int /*<<< orphan*/  open_wait; int /*<<< orphan*/  device; } ;
struct TYPE_4__ {int /*<<< orphan*/  f_ref; TYPE_2__* parentdp; } ;
typedef  TYPE_1__ Sg_fd ;
typedef  TYPE_2__ Sg_device ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,char*) ; 
 int /*<<< orphan*/  sg_remove_sfp ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct inode *inode, struct file *filp)
{
	Sg_device *sdp;
	Sg_fd *sfp;

	if ((!(sfp = (Sg_fd *) filp->private_data)) || (!(sdp = sfp->parentdp)))
		return -ENXIO;
	FUNC0(3, FUNC5(KERN_INFO, sdp, "sg_release\n"));

	FUNC2(&sdp->open_rel_lock);
	FUNC4(sdp->device);
	FUNC1(&sfp->f_ref, sg_remove_sfp);
	sdp->open_cnt--;

	/* possibly many open()s waiting on exlude clearing, start many;
	 * only open(O_EXCL)s wait on 0==open_cnt so only start one */
	if (sdp->exclude) {
		sdp->exclude = false;
		FUNC7(&sdp->open_wait);
	} else if (0 == sdp->open_cnt) {
		FUNC6(&sdp->open_wait);
	}
	FUNC3(&sdp->open_rel_lock);
	return 0;
}