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
struct ptp_qoriq {int /*<<< orphan*/  dev; struct dentry* debugfs_root; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct dentry*,struct ptp_qoriq*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ptp_qoriq_fiper1_fops ; 
 int /*<<< orphan*/  ptp_qoriq_fiper2_fops ; 

void FUNC6(struct ptp_qoriq *ptp_qoriq)
{
	struct dentry *root;

	root = FUNC1(FUNC5(ptp_qoriq->dev), NULL);
	if (FUNC0(root))
		return;
	if (!root)
		goto err_root;

	ptp_qoriq->debugfs_root = root;

	if (!FUNC2("fiper1-loopback", 0600, root,
					ptp_qoriq, &ptp_qoriq_fiper1_fops))
		goto err_node;
	if (!FUNC2("fiper2-loopback", 0600, root,
					ptp_qoriq, &ptp_qoriq_fiper2_fops))
		goto err_node;
	return;

err_node:
	FUNC3(root);
	ptp_qoriq->debugfs_root = NULL;
err_root:
	FUNC4(ptp_qoriq->dev, "failed to initialize debugfs\n");
}