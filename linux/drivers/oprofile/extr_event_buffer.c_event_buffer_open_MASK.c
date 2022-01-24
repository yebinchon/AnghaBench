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
struct inode {int dummy; } ;
struct file {int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EBUSY ; 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  buffer_opened ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*,struct file*) ; 
 int FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *file)
{
	int err = -EPERM;

	if (!FUNC1(CAP_SYS_ADMIN))
		return -EPERM;

	if (FUNC6(0, &buffer_opened))
		return -EBUSY;

	/* Register as a user of dcookies
	 * to ensure they persist for the lifetime of
	 * the open event file
	 */
	err = -EINVAL;
	file->private_data = FUNC2();
	if (!file->private_data)
		goto out;

	if ((err = FUNC5()))
		goto fail;

	/* NB: the actual start happens from userspace
	 * echo 1 >/dev/oprofile/enable
	 */

	return FUNC4(inode, file);

fail:
	FUNC3(file->private_data);
out:
	FUNC0(0, &buffer_opened);
	return err;
}