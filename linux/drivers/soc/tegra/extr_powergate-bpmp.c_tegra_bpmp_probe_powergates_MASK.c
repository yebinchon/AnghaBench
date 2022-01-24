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
struct tegra_powergate_info {char* name; unsigned int id; } ;
struct tegra_bpmp {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 struct tegra_powergate_info* FUNC1 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct tegra_bpmp*) ; 
 char* FUNC3 (struct tegra_bpmp*,unsigned int) ; 

__attribute__((used)) static int
FUNC4(struct tegra_bpmp *bpmp,
			    struct tegra_powergate_info **powergatesp)
{
	struct tegra_powergate_info *powergates;
	unsigned int max_id, id, count = 0;
	unsigned int num_holes = 0;
	int err;

	err = FUNC2(bpmp);
	if (err < 0)
		return err;

	max_id = err;

	FUNC0(bpmp->dev, "maximum powergate ID: %u\n", max_id);

	powergates = FUNC1(max_id + 1, sizeof(*powergates), GFP_KERNEL);
	if (!powergates)
		return -ENOMEM;

	for (id = 0; id <= max_id; id++) {
		struct tegra_powergate_info *info = &powergates[count];

		info->name = FUNC3(bpmp, id);
		if (!info->name || info->name[0] == '\0') {
			num_holes++;
			continue;
		}

		info->id = id;
		count++;
	}

	FUNC0(bpmp->dev, "holes: %u\n", num_holes);

	*powergatesp = powergates;

	return count;
}