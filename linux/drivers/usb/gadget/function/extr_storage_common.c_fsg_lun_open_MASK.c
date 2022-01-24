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
struct inode {scalar_t__ i_bdev; TYPE_1__* i_mapping; int /*<<< orphan*/  i_mode; } ;
struct fsg_lun {int initially_ro; unsigned int blksize; unsigned int blkbits; int ro; unsigned int file_length; unsigned int num_sectors; struct file* filp; scalar_t__ cdrom; } ;
struct file {int f_mode; } ;
typedef  unsigned int loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 int EROFS ; 
 int ETOOSMALL ; 
 int FMODE_CAN_READ ; 
 int FMODE_CAN_WRITE ; 
 int FMODE_WRITE ; 
 scalar_t__ FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct fsg_lun*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsg_lun*,char*,...) ; 
 int O_LARGEFILE ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (scalar_t__) ; 
 unsigned int FUNC7 (unsigned int) ; 
 struct inode* FUNC8 (struct file*) ; 
 struct file* FUNC9 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct file*) ; 
 int /*<<< orphan*/  FUNC11 (struct fsg_lun*) ; 
 scalar_t__ FUNC12 (struct fsg_lun*) ; 
 unsigned int FUNC13 (int /*<<< orphan*/ ) ; 

int FUNC14(struct fsg_lun *curlun, const char *filename)
{
	int				ro;
	struct file			*filp = NULL;
	int				rc = -EINVAL;
	struct inode			*inode = NULL;
	loff_t				size;
	loff_t				num_sectors;
	loff_t				min_sectors;
	unsigned int			blkbits;
	unsigned int			blksize;

	/* R/W if we can, R/O if we must */
	ro = curlun->initially_ro;
	if (!ro) {
		filp = FUNC9(filename, O_RDWR | O_LARGEFILE, 0);
		if (FUNC3(filp) == -EROFS || FUNC3(filp) == -EACCES)
			ro = 1;
	}
	if (ro)
		filp = FUNC9(filename, O_RDONLY | O_LARGEFILE, 0);
	if (FUNC0(filp)) {
		FUNC2(curlun, "unable to open backing file: %s\n", filename);
		return FUNC3(filp);
	}

	if (!(filp->f_mode & FMODE_WRITE))
		ro = 1;

	inode = FUNC8(filp);
	if ((!FUNC5(inode->i_mode) && !FUNC4(inode->i_mode))) {
		FUNC2(curlun, "invalid file type: %s\n", filename);
		goto out;
	}

	/*
	 * If we can't read the file, it's no good.
	 * If we can't write the file, use it read-only.
	 */
	if (!(filp->f_mode & FMODE_CAN_READ)) {
		FUNC2(curlun, "file not readable: %s\n", filename);
		goto out;
	}
	if (!(filp->f_mode & FMODE_CAN_WRITE))
		ro = 1;

	size = FUNC13(inode->i_mapping->host);
	if (size < 0) {
		FUNC2(curlun, "unable to find file size: %s\n", filename);
		rc = (int) size;
		goto out;
	}

	if (curlun->cdrom) {
		blksize = 2048;
		blkbits = 11;
	} else if (inode->i_bdev) {
		blksize = FUNC6(inode->i_bdev);
		blkbits = FUNC7(blksize);
	} else {
		blksize = 512;
		blkbits = 9;
	}

	num_sectors = size >> blkbits; /* File size in logic-block-size blocks */
	min_sectors = 1;
	if (curlun->cdrom) {
		min_sectors = 300;	/* Smallest track is 300 frames */
		if (num_sectors >= 256*60*75) {
			num_sectors = 256*60*75 - 1;
			FUNC2(curlun, "file too big: %s\n", filename);
			FUNC2(curlun, "using only first %d blocks\n",
					(int) num_sectors);
		}
	}
	if (num_sectors < min_sectors) {
		FUNC2(curlun, "file too small: %s\n", filename);
		rc = -ETOOSMALL;
		goto out;
	}

	if (FUNC12(curlun))
		FUNC11(curlun);

	curlun->blksize = blksize;
	curlun->blkbits = blkbits;
	curlun->ro = ro;
	curlun->filp = filp;
	curlun->file_length = size;
	curlun->num_sectors = num_sectors;
	FUNC1(curlun, "open backing file: %s\n", filename);
	return 0;

out:
	FUNC10(filp);
	return rc;
}