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
struct kernel_param {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  global_db_count ; 
 int FUNC3 (char const*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ tcmu_global_max_blocks ; 
 int /*<<< orphan*/  tcmu_unmap_work ; 

__attribute__((used)) static int FUNC6(const char *str,
					 const struct kernel_param *kp)
{
	int ret, max_area_mb;

	ret = FUNC3(str, 10, &max_area_mb);
	if (ret)
		return -EINVAL;

	if (max_area_mb <= 0) {
		FUNC4("global_max_data_area must be larger than 0.\n");
		return -EINVAL;
	}

	tcmu_global_max_blocks = FUNC0(max_area_mb);
	if (FUNC1(&global_db_count) > tcmu_global_max_blocks)
		FUNC5(&tcmu_unmap_work, 0);
	else
		FUNC2(&tcmu_unmap_work);

	return 0;
}