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

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  visorhba_debugfs_dir ; 
 int /*<<< orphan*/  visorhba_driver ; 

__attribute__((used)) static int FUNC3(void)
{
	int rc = -ENOMEM;

	visorhba_debugfs_dir = FUNC0("visorhba", NULL);
	if (!visorhba_debugfs_dir)
		return -ENOMEM;

	rc = FUNC2(&visorhba_driver);
	if (rc)
		goto cleanup_debugfs;

	return 0;

cleanup_debugfs:
	FUNC1(visorhba_debugfs_dir);

	return rc;
}