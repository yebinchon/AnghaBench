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
struct v9fs_session_info {scalar_t__ cache; } ;
struct v9fs_inode {int /*<<< orphan*/  v_mutex; void* writeback_fid; } ;
struct p9_fid {int dummy; } ;
struct inode {int dummy; } ;
struct file {int f_flags; struct p9_fid* private_data; } ;

/* Variables and functions */
 scalar_t__ CACHE_FSCACHE ; 
 scalar_t__ CACHE_LOOSE ; 
 scalar_t__ FUNC0 (struct p9_fid*) ; 
 int O_ACCMODE ; 
 int O_APPEND ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int FUNC1 (struct p9_fid*) ; 
 int /*<<< orphan*/  SEEK_END ; 
 struct v9fs_inode* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct p9_fid*) ; 
 int FUNC8 (struct p9_fid*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,struct file*) ; 
 struct p9_fid* FUNC11 (int /*<<< orphan*/ ) ; 
 struct v9fs_session_info* FUNC12 (struct inode*) ; 
 int FUNC13 (int) ; 
 scalar_t__ FUNC14 (struct v9fs_session_info*) ; 
 int /*<<< orphan*/  FUNC15 (struct v9fs_session_info*) ; 
 int FUNC16 (int,int /*<<< orphan*/ ) ; 
 struct p9_fid* FUNC17 (int /*<<< orphan*/ ) ; 

int FUNC18(struct inode *inode, struct file *file)
{
	int err;
	struct v9fs_inode *v9inode;
	struct v9fs_session_info *v9ses;
	struct p9_fid *fid;
	int omode;

	FUNC9(P9_DEBUG_VFS, "inode: %p file: %p\n", inode, file);
	v9inode = FUNC2(inode);
	v9ses = FUNC12(inode);
	if (FUNC14(v9ses))
		omode = FUNC13(file->f_flags);
	else
		omode = FUNC16(file->f_flags,
					FUNC15(v9ses));
	fid = file->private_data;
	if (!fid) {
		fid = FUNC11(FUNC3(file));
		if (FUNC0(fid))
			return FUNC1(fid);

		err = FUNC8(fid, omode);
		if (err < 0) {
			FUNC7(fid);
			return err;
		}
		if ((file->f_flags & O_APPEND) &&
			(!FUNC15(v9ses) && !FUNC14(v9ses)))
			FUNC4(file, 0, SEEK_END);
	}

	file->private_data = fid;
	FUNC5(&v9inode->v_mutex);
	if ((v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE) &&
	    !v9inode->writeback_fid &&
	    ((file->f_flags & O_ACCMODE) != O_RDONLY)) {
		/*
		 * clone a fid and add it to writeback_fid
		 * we do it during open time instead of
		 * page dirty time via write_begin/page_mkwrite
		 * because we want write after unlink usecase
		 * to work.
		 */
		fid = FUNC17(FUNC3(file));
		if (FUNC0(fid)) {
			err = FUNC1(fid);
			FUNC6(&v9inode->v_mutex);
			goto out_error;
		}
		v9inode->writeback_fid = (void *) fid;
	}
	FUNC6(&v9inode->v_mutex);
	if (v9ses->cache == CACHE_LOOSE || v9ses->cache == CACHE_FSCACHE)
		FUNC10(inode, file);
	return 0;
out_error:
	FUNC7(file->private_data);
	file->private_data = NULL;
	return err;
}