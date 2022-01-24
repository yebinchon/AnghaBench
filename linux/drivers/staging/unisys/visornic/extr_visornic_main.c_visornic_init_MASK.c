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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  debugfs_enable_ints_fops ; 
 int /*<<< orphan*/  debugfs_info_fops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  visornic_debugfs_dir ; 
 int /*<<< orphan*/  visornic_driver ; 

__attribute__((used)) static int FUNC4(void)
{
	int err;

	visornic_debugfs_dir = FUNC0("visornic", NULL);

	FUNC1("info", 0400, visornic_debugfs_dir, NULL,
			    &debugfs_info_fops);
	FUNC1("enable_ints", 0200, visornic_debugfs_dir, NULL,
			    &debugfs_enable_ints_fops);

	err = FUNC3(&visornic_driver);
	if (err)
		FUNC2(visornic_debugfs_dir);

	return err;
}