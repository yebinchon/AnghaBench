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
struct file {int f_flags; int /*<<< orphan*/ * private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int O_ACCMODE ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct file*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *fp)
{
	int rc;

	/* check for non-blocking access, which is really unsupported
	 */
	if (fp->f_flags & O_NONBLOCK)
		return -EINVAL;

	/* Because it makes no sense to open this device read-only (then a
	 * FTP command cannot be emitted), we respond with an error.
	 */
	if ((fp->f_flags & O_ACCMODE) == O_RDONLY)
		return -EINVAL;

	/* prevent unloading this module as long as anyone holds the
	 * device file open - so increment the reference count here
	 */
	if (!FUNC3(THIS_MODULE))
		return -ENODEV;

	fp->private_data = NULL; /* no command yet */
	rc = FUNC0();
	if (rc)
		FUNC1(THIS_MODULE);

	FUNC2("open file '/dev/%pD' with return code %d\n", fp, rc);
	return rc;
}