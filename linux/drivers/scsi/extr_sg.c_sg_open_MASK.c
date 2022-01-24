#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int dummy; } ;
struct inode {int dummy; } ;
struct file {int f_flags; TYPE_1__* private_data; } ;
struct TYPE_16__ {struct request_queue* request_queue; } ;
struct TYPE_15__ {int open_cnt; int exclude; TYPE_7__* device; int /*<<< orphan*/  open_rel_lock; int /*<<< orphan*/  open_wait; int /*<<< orphan*/  d_ref; int /*<<< orphan*/  sg_tablesize; scalar_t__ sgdebug; } ;
typedef  TYPE_1__ Sg_fd ;
typedef  TYPE_1__ Sg_device ;

/* Variables and functions */
 int EBUSY ; 
 int ENXIO ; 
 int EPERM ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int O_ACCMODE ; 
 int O_EXCL ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct file*) ; 
 int FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct request_queue*) ; 
 int FUNC10 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*) ; 
 scalar_t__ FUNC12 (TYPE_7__*) ; 
 int FUNC13 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_7__*) ; 
 TYPE_1__* FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  sg_device_destroy ; 
 TYPE_1__* FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC19(struct inode *inode, struct file *filp)
{
	int dev = FUNC3(inode);
	int flags = filp->f_flags;
	struct request_queue *q;
	Sg_device *sdp;
	Sg_fd *sfp;
	int retval;

	FUNC7(inode, filp);
	if ((flags & O_EXCL) && (O_RDONLY == (flags & O_ACCMODE)))
		return -EPERM; /* Can't lock it with read only access */
	sdp = FUNC16(dev);
	if (FUNC0(sdp))
		return FUNC1(sdp);

	FUNC2(3, FUNC17(KERN_INFO, sdp,
				      "sg_open: flags=0x%x\n", flags));

	/* This driver's module count bumped by fops_get in <linux/fs.h> */
	/* Prevent the device driver from vanishing while we sleep */
	retval = FUNC13(sdp->device);
	if (retval)
		goto sg_put;

	retval = FUNC10(sdp->device);
	if (retval)
		goto sdp_put;

	/* scsi_block_when_processing_errors() may block so bypass
	 * check if O_NONBLOCK. Permits SCSI commands to be issued
	 * during error recovery. Tread carefully. */
	if (!((flags & O_NONBLOCK) ||
	      FUNC12(sdp->device))) {
		retval = -ENXIO;
		/* we are in error recovery for this device */
		goto error_out;
	}

	FUNC5(&sdp->open_rel_lock);
	if (flags & O_NONBLOCK) {
		if (flags & O_EXCL) {
			if (sdp->open_cnt > 0) {
				retval = -EBUSY;
				goto error_mutex_locked;
			}
		} else {
			if (sdp->exclude) {
				retval = -EBUSY;
				goto error_mutex_locked;
			}
		}
	} else {
		retval = FUNC8(sdp, flags);
		if (retval) /* -ERESTARTSYS or -ENODEV */
			goto error_mutex_locked;
	}

	/* N.B. at this point we are holding the open_rel_lock */
	if (flags & O_EXCL)
		sdp->exclude = true;

	if (sdp->open_cnt < 1) {  /* no existing opens */
		sdp->sgdebug = 0;
		q = sdp->device->request_queue;
		sdp->sg_tablesize = FUNC9(q);
	}
	sfp = FUNC15(sdp);
	if (FUNC0(sfp)) {
		retval = FUNC1(sfp);
		goto out_undo;
	}

	filp->private_data = sfp;
	sdp->open_cnt++;
	FUNC6(&sdp->open_rel_lock);

	retval = 0;
sg_put:
	FUNC4(&sdp->d_ref, sg_device_destroy);
	return retval;

out_undo:
	if (flags & O_EXCL) {
		sdp->exclude = false;   /* undo if error */
		FUNC18(&sdp->open_wait);
	}
error_mutex_locked:
	FUNC6(&sdp->open_rel_lock);
error_out:
	FUNC11(sdp->device);
sdp_put:
	FUNC14(sdp->device);
	goto sg_put;
}