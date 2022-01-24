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
struct dentry {int dummy; } ;
struct csi_state {int /*<<< orphan*/  debugfs_root; int /*<<< orphan*/  debug; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 struct dentry* FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC2 (char*,int,int /*<<< orphan*/ ,struct csi_state*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mipi_csis_dump_regs_fops ; 

__attribute__((used)) static int FUNC6(struct csi_state *state)
{
	struct dentry *d;

	if (!FUNC3())
		return -ENODEV;

	state->debugfs_root = FUNC1(FUNC5(state->dev), NULL);
	if (!state->debugfs_root)
		return -ENOMEM;

	d = FUNC0("debug_enable", 0600, state->debugfs_root,
				&state->debug);
	if (!d)
		goto remove_debugfs;

	d = FUNC2("dump_regs", 0600, state->debugfs_root,
				state, &mipi_csis_dump_regs_fops);
	if (!d)
		goto remove_debugfs;

	return 0;

remove_debugfs:
	FUNC4(state->debugfs_root);

	return -ENOMEM;
}