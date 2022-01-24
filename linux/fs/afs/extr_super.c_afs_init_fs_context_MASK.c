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
struct fs_context {int /*<<< orphan*/ * ops; struct afs_fs_context* fs_private; int /*<<< orphan*/  net_ns; } ;
struct afs_fs_context {struct afs_cell* cell; int /*<<< orphan*/  net; int /*<<< orphan*/  type; } ;
struct afs_cell {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFSVL_ROVOL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct afs_cell*) ; 
 int /*<<< orphan*/  afs_context_ops ; 
 struct afs_cell* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct afs_fs_context* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct fs_context *fc)
{
	struct afs_fs_context *ctx;
	struct afs_cell *cell;

	ctx = FUNC3(sizeof(struct afs_fs_context), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	ctx->type = AFSVL_ROVOL;
	ctx->net = FUNC2(fc->net_ns);

	/* Default to the workstation cell. */
	FUNC4();
	cell = FUNC1(ctx->net, NULL, 0);
	FUNC5();
	if (FUNC0(cell))
		cell = NULL;
	ctx->cell = cell;

	fc->fs_private = ctx;
	fc->ops = &afs_context_ops;
	return 0;
}