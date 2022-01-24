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
struct megasas_pd_list {int dummy; } ;
struct megasas_instance {TYPE_1__* pdev; scalar_t__ enable_fw_dev_list; int /*<<< orphan*/  ld_ids; int /*<<< orphan*/  pd_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FAILED ; 
 int MEGASAS_MAX_LD_IDS ; 
 int MEGASAS_MAX_PD ; 
 int /*<<< orphan*/  MR_LD_QUERY_TYPE_EXPOSED_TO_HOST ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (struct megasas_instance*) ; 
 scalar_t__ FUNC2 (struct megasas_instance*,int) ; 
 scalar_t__ FUNC3 (struct megasas_instance*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static
int FUNC5(struct megasas_instance *instance)
{
	FUNC4(instance->pd_list, 0,
	       (MEGASAS_MAX_PD * sizeof(struct megasas_pd_list)));
	FUNC4(instance->ld_ids, 0xff, MEGASAS_MAX_LD_IDS);

	if (instance->enable_fw_dev_list) {
		if (FUNC2(instance, true))
			return FAILED;
	} else {
		if (FUNC1(instance) < 0) {
			FUNC0(&instance->pdev->dev, "failed to get PD list\n");
			return FAILED;
		}

		if (FUNC3(instance,
					  MR_LD_QUERY_TYPE_EXPOSED_TO_HOST)) {
			FUNC0(&instance->pdev->dev, "failed to get LD list\n");
			return FAILED;
		}
	}

	return SUCCESS;
}