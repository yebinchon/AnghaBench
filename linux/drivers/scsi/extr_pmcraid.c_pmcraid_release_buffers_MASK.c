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
struct pmcraid_timestamp_data {int dummy; } ;
struct pmcraid_instance {scalar_t__ timestamp_data_baddr; int /*<<< orphan*/ * timestamp_data; TYPE_1__* pdev; scalar_t__ inq_data_baddr; int /*<<< orphan*/ * inq_data; int /*<<< orphan*/  num_hrrq; } ;
struct pmcraid_inquiry_data {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PMCRAID_MAX_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct pmcraid_instance*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pmcraid_instance*) ; 
 int /*<<< orphan*/  FUNC3 (struct pmcraid_instance*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pmcraid_instance*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct pmcraid_instance *pinstance)
{
	FUNC2(pinstance);
	FUNC3(pinstance, PMCRAID_MAX_CMD);
	FUNC1(pinstance, PMCRAID_MAX_CMD);
	FUNC4(pinstance, pinstance->num_hrrq);

	if (pinstance->inq_data != NULL) {
		FUNC0(&pinstance->pdev->dev,
				    sizeof(struct pmcraid_inquiry_data),
				    pinstance->inq_data,
				    pinstance->inq_data_baddr);

		pinstance->inq_data = NULL;
		pinstance->inq_data_baddr = 0;
	}

	if (pinstance->timestamp_data != NULL) {
		FUNC0(&pinstance->pdev->dev,
				    sizeof(struct pmcraid_timestamp_data),
				    pinstance->timestamp_data,
				    pinstance->timestamp_data_baddr);

		pinstance->timestamp_data = NULL;
		pinstance->timestamp_data_baddr = 0;
	}
}