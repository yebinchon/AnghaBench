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
struct venus_comm {int /*<<< orphan*/  vc_mutex; scalar_t__ vc_seq; int /*<<< orphan*/ * vc_sb; int /*<<< orphan*/  vc_waitq; int /*<<< orphan*/  vc_processing; int /*<<< orphan*/  vc_pending; int /*<<< orphan*/  vc_inuse; } ;
struct inode {int dummy; } ;
struct file {struct venus_comm* private_data; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MAX_CODADEVS ; 
 struct venus_comm* coda_comms ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  init_pid_ns ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct inode * inode, struct file * file)
{
	struct venus_comm *vcp;
	int idx, err;

	if (FUNC6(current) != &init_pid_ns)
		return -EINVAL;

	if (FUNC1() != &init_user_ns)
		return -EINVAL;

	idx = FUNC2(inode);
	if (idx < 0 || idx >= MAX_CODADEVS)
		return -ENODEV;

	err = -EBUSY;
	vcp = &coda_comms[idx];
	FUNC4(&vcp->vc_mutex);

	if (!vcp->vc_inuse) {
		vcp->vc_inuse++;

		FUNC0(&vcp->vc_pending);
		FUNC0(&vcp->vc_processing);
		FUNC3(&vcp->vc_waitq);
		vcp->vc_sb = NULL;
		vcp->vc_seq = 0;

		file->private_data = vcp;
		err = 0;
	}

	FUNC5(&vcp->vc_mutex);
	return err;
}