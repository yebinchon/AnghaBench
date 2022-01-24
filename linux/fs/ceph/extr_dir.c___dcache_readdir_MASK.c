#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct inode {int i_mode; int /*<<< orphan*/  i_ino; } ;
struct TYPE_4__ {struct dentry* dentry; } ;
struct file {TYPE_1__ f_path; struct ceph_dir_file_info* private_data; } ;
struct dir_context {int pos; } ;
struct TYPE_6__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_3__ d_name; int /*<<< orphan*/  d_sb; int /*<<< orphan*/  d_lock; } ;
struct ceph_readdir_cache_control {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
struct ceph_dir_file_info {int readdir_cache_idx; scalar_t__ dir_release_count; TYPE_2__ file_info; } ;
struct ceph_dentry_info {int offset; int lease_shared_gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_F_ATEND ; 
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_dentry_info*) ; 
 struct dentry* FUNC3 (struct dentry*,int,struct ceph_readdir_cache_control*) ; 
 struct ceph_dentry_info* FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct ceph_readdir_cache_control*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inode* FUNC7 (struct dentry*) ; 
 scalar_t__ FUNC8 (struct dentry*) ; 
 scalar_t__ FUNC9 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC10 (struct dir_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (struct dentry*) ; 
 scalar_t__ FUNC14 (int,int) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int FUNC17 (struct ceph_dir_file_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct file *file,  struct dir_context *ctx,
			    int shared_gen)
{
	struct ceph_dir_file_info *dfi = file->private_data;
	struct dentry *parent = file->f_path.dentry;
	struct inode *dir = FUNC7(parent);
	struct dentry *dentry, *last = NULL;
	struct ceph_dentry_info *di;
	struct ceph_readdir_cache_control cache_ctl = {};
	u64 idx = 0;
	int err = 0;

	FUNC12("__dcache_readdir %p v%u at %llx\n", dir, (unsigned)shared_gen, ctx->pos);

	/* search start position */
	if (ctx->pos > 2) {
		u64 count = FUNC11(FUNC16(dir), sizeof(struct dentry *));
		while (count > 0) {
			u64 step = count >> 1;
			dentry = FUNC3(parent, idx + step,
							 &cache_ctl);
			if (!dentry) {
				/* use linar search */
				idx = 0;
				break;
			}
			if (FUNC0(dentry)) {
				err = FUNC1(dentry);
				goto out;
			}
			di = FUNC4(dentry);
			FUNC18(&dentry->d_lock);
			if (FUNC14(di->offset, ctx->pos) < 0) {
				idx += step + 1;
				count -= step + 1;
			} else {
				count = step;
			}
			FUNC19(&dentry->d_lock);
			FUNC13(dentry);
		}

		FUNC12("__dcache_readdir %p cache idx %llu\n", dir, idx);
	}


	for (;;) {
		bool emit_dentry = false;
		dentry = FUNC3(parent, idx++, &cache_ctl);
		if (!dentry) {
			dfi->file_info.flags |= CEPH_F_ATEND;
			err = 0;
			break;
		}
		if (FUNC0(dentry)) {
			err = FUNC1(dentry);
			goto out;
		}

		FUNC18(&dentry->d_lock);
		di = FUNC4(dentry);
		if (FUNC9(dentry) ||
		    FUNC8(dentry) ||
		    di->lease_shared_gen != shared_gen) {
			FUNC19(&dentry->d_lock);
			FUNC13(dentry);
			err = -EAGAIN;
			goto out;
		}
		if (FUNC14(ctx->pos, di->offset) <= 0) {
			FUNC2(di);
			emit_dentry = true;
		}
		FUNC19(&dentry->d_lock);

		if (emit_dentry) {
			FUNC12(" %llx dentry %p %pd %p\n", di->offset,
			     dentry, dentry, FUNC7(dentry));
			ctx->pos = di->offset;
			if (!FUNC10(ctx, dentry->d_name.name,
				      dentry->d_name.len,
				      FUNC6(dentry->d_sb,
							 FUNC7(dentry)->i_ino),
				      FUNC7(dentry)->i_mode >> 12)) {
				FUNC13(dentry);
				err = 0;
				break;
			}
			ctx->pos++;

			if (last)
				FUNC13(last);
			last = dentry;
		} else {
			FUNC13(dentry);
		}
	}
out:
	FUNC5(&cache_ctl);
	if (last) {
		int ret;
		di = FUNC4(last);
		ret = FUNC17(dfi, last->d_name.name, last->d_name.len,
				       FUNC15(di->offset) + 1);
		if (ret < 0)
			err = ret;
		FUNC13(last);
		/* last_name no longer match cache index */
		if (dfi->readdir_cache_idx >= 0) {
			dfi->readdir_cache_idx = -1;
			dfi->dir_release_count = 0;
		}
	}
	return err;
}