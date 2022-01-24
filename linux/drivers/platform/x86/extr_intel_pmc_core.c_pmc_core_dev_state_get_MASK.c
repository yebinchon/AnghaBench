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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct pmc_reg_map {int /*<<< orphan*/  slp_s0_offset; } ;
struct pmc_dev {struct pmc_reg_map* map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pmc_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(void *data, u64 *val)
{
	struct pmc_dev *pmcdev = data;
	const struct pmc_reg_map *map = pmcdev->map;
	u32 value;

	value = FUNC1(pmcdev, map->slp_s0_offset);
	*val = FUNC0(value);

	return 0;
}