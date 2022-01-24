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
struct inode {int dummy; } ;
struct file {TYPE_1__* f_op; } ;
struct dir_context {int dummy; } ;
struct coda_file_info {struct file* cfi_container; } ;
struct TYPE_2__ {int (* iterate ) (struct file*,struct dir_context*) ;int (* iterate_shared ) (struct file*,struct dir_context*) ;} ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct coda_file_info* FUNC1 (struct file*) ; 
 int FUNC2 (struct file*,struct dir_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 struct inode* FUNC4 (struct file*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int FUNC9 (struct file*,struct dir_context*) ; 
 int FUNC10 (struct file*,struct dir_context*) ; 

__attribute__((used)) static int FUNC11(struct file *coda_file, struct dir_context *ctx)
{
	struct coda_file_info *cfi;
	struct file *host_file;
	int ret;

	cfi = FUNC1(coda_file);
	host_file = cfi->cfi_container;

	if (host_file->f_op->iterate || host_file->f_op->iterate_shared) {
		struct inode *host_inode = FUNC4(host_file);
		ret = -ENOENT;
		if (!FUNC0(host_inode)) {
			if (host_file->f_op->iterate_shared) {
				FUNC6(host_inode);
				ret = host_file->f_op->iterate_shared(host_file, ctx);
				FUNC3(host_file);
				FUNC8(host_inode);
			} else {
				FUNC5(host_inode);
				ret = host_file->f_op->iterate(host_file, ctx);
				FUNC3(host_file);
				FUNC7(host_inode);
			}
		}
		return ret;
	}
	/* Venus: we must read Venus dirents from a file */
	return FUNC2(coda_file, ctx);
}