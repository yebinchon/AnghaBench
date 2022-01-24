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
struct pid {int dummy; } ;
struct file {int dummy; } ;
struct autofs_sb_info {int flags; int pipefd; int /*<<< orphan*/  wq_mutex; struct file* pipe; struct pid* oz_pgrp; } ;
struct TYPE_2__ {int pipefd; } ;
struct autofs_dev_ioctl {TYPE_1__ setpipefd; } ;

/* Variables and functions */
 int AUTOFS_SBI_CATATONIC ; 
 int EBADF ; 
 int EBUSY ; 
 int EINVAL ; 
 int EPIPE ; 
 int /*<<< orphan*/  PIDTYPE_PGID ; 
 scalar_t__ FUNC0 (struct file*) ; 
 int /*<<< orphan*/  current ; 
 struct file* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 struct pid* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct pid*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct pid*) ; 
 int /*<<< orphan*/  FUNC9 (struct pid*,struct pid*) ; 

__attribute__((used)) static int FUNC10(struct file *fp,
				      struct autofs_sb_info *sbi,
				      struct autofs_dev_ioctl *param)
{
	int pipefd;
	int err = 0;
	struct pid *new_pid = NULL;

	if (param->setpipefd.pipefd == -1)
		return -EINVAL;

	pipefd = param->setpipefd.pipefd;

	FUNC4(&sbi->wq_mutex);
	if (!(sbi->flags & AUTOFS_SBI_CATATONIC)) {
		FUNC5(&sbi->wq_mutex);
		return -EBUSY;
	} else {
		struct file *pipe;

		new_pid = FUNC3(current, PIDTYPE_PGID);

		if (FUNC6(new_pid) != FUNC6(sbi->oz_pgrp)) {
			FUNC7("not allowed to change PID namespace\n");
			err = -EINVAL;
			goto out;
		}

		pipe = FUNC1(pipefd);
		if (!pipe) {
			err = -EBADF;
			goto out;
		}
		if (FUNC0(pipe) < 0) {
			err = -EPIPE;
			FUNC2(pipe);
			goto out;
		}
		FUNC9(sbi->oz_pgrp, new_pid);
		sbi->pipefd = pipefd;
		sbi->pipe = pipe;
		sbi->flags &= ~AUTOFS_SBI_CATATONIC;
	}
out:
	FUNC8(new_pid);
	FUNC5(&sbi->wq_mutex);
	return err;
}