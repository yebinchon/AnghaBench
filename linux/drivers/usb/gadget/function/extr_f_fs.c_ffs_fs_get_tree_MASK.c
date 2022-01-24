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
struct fs_context {int /*<<< orphan*/  source; struct ffs_sb_fill_data* fs_private; } ;
struct ffs_sb_fill_data {struct ffs_data* ffs_data; int /*<<< orphan*/  no_disconnect; int /*<<< orphan*/  perms; } ;
struct ffs_data {void* private_data; int /*<<< orphan*/  dev_name; int /*<<< orphan*/  no_disconnect; int /*<<< orphan*/  file_perms; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 struct ffs_data* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ffs_data*) ; 
 int /*<<< orphan*/  ffs_sb_fill ; 
 int FUNC6 (struct fs_context*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct fs_context*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct fs_context *fc)
{
	struct ffs_sb_fill_data *ctx = fc->fs_private;
	void *ffs_dev;
	struct ffs_data	*ffs;

	FUNC0();

	if (!fc->source)
		return FUNC7(fc, "No source specified");

	ffs = FUNC4(fc->source);
	if (FUNC9(!ffs))
		return -ENOMEM;
	ffs->file_perms = ctx->perms;
	ffs->no_disconnect = ctx->no_disconnect;

	ffs->dev_name = FUNC8(fc->source, GFP_KERNEL);
	if (FUNC9(!ffs->dev_name)) {
		FUNC5(ffs);
		return -ENOMEM;
	}

	ffs_dev = FUNC3(ffs->dev_name);
	if (FUNC1(ffs_dev)) {
		FUNC5(ffs);
		return FUNC2(ffs_dev);
	}

	ffs->private_data = ffs_dev;
	ctx->ffs_data = ffs;
	return FUNC6(fc, ffs_sb_fill);
}