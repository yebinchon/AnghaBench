#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int index; TYPE_1__* driver; } ;
struct inode {int dummy; } ;
struct TYPE_8__ {int rows; int cols; } ;
struct idal_buffer {TYPE_2__ view; struct idal_buffer* rdbuf; int /*<<< orphan*/  fs_pid; int /*<<< orphan*/  wait; } ;
struct fs3270 {TYPE_2__ view; struct fs3270* rdbuf; int /*<<< orphan*/  fs_pid; int /*<<< orphan*/  wait; } ;
struct file {struct idal_buffer* private_data; } ;
struct TYPE_7__ {scalar_t__ major; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 scalar_t__ IBM_FS3270_MAJOR ; 
 scalar_t__ IBM_TTY3270_MAJOR ; 
 scalar_t__ FUNC0 (struct idal_buffer*) ; 
 int FUNC1 (struct idal_buffer*) ; 
 int /*<<< orphan*/  RAW3270_VIEW_LOCK_BH ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 struct idal_buffer* FUNC3 () ; 
 int /*<<< orphan*/  fs3270_fn ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  fs3270_mutex ; 
 struct tty_struct* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct idal_buffer* FUNC7 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (TYPE_2__*) ; 
 int FUNC14 (TYPE_2__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct tty_struct*) ; 

__attribute__((used)) static int
FUNC21(struct inode *inode, struct file *filp)
{
	struct fs3270 *fp;
	struct idal_buffer *ib;
	int minor, rc = 0;

	if (FUNC8(FUNC2(filp)) != IBM_FS3270_MAJOR)
		return -ENODEV;
	minor = FUNC9(FUNC2(filp));
	/* Check for minor 0 multiplexer. */
	if (minor == 0) {
		struct tty_struct *tty = FUNC5();
		if (!tty || tty->driver->major != IBM_TTY3270_MAJOR) {
			FUNC20(tty);
			return -ENODEV;
		}
		minor = tty->index;
		FUNC20(tty);
	}
	FUNC11(&fs3270_mutex);
	/* Check if some other program is already using fullscreen mode. */
	fp = (struct fs3270 *) FUNC16(&fs3270_fn, minor);
	if (!FUNC0(fp)) {
		FUNC17(&fp->view);
		rc = -EBUSY;
		goto out;
	}
	/* Allocate fullscreen view structure. */
	fp = FUNC3();
	if (FUNC0(fp)) {
		rc = FUNC1(fp);
		goto out;
	}

	FUNC10(&fp->wait);
	fp->fs_pid = FUNC6(FUNC19(current));
	rc = FUNC14(&fp->view, &fs3270_fn, minor,
			      RAW3270_VIEW_LOCK_BH);
	if (rc) {
		FUNC4(&fp->view);
		goto out;
	}

	/* Allocate idal-buffer. */
	ib = FUNC7(2*fp->view.rows*fp->view.cols + 5, 0);
	if (FUNC0(ib)) {
		FUNC17(&fp->view);
		FUNC15(&fp->view);
		rc = FUNC1(ib);
		goto out;
	}
	fp->rdbuf = ib;

	rc = FUNC13(&fp->view);
	if (rc) {
		FUNC17(&fp->view);
		FUNC15(&fp->view);
		goto out;
	}
	FUNC18(inode, filp);
	filp->private_data = fp;
out:
	FUNC12(&fs3270_mutex);
	return rc;
}