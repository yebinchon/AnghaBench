#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint ;
struct TYPE_4__ {scalar_t__ fce_enabled; } ;
struct qla_hw_data {scalar_t__ fw_dump_len; int /*<<< orphan*/ * fw_dump; scalar_t__ fw_dump_reading; scalar_t__ fw_dump_cap_flags; scalar_t__ fw_dumped; scalar_t__ eft_dma; int /*<<< orphan*/ * eft; TYPE_2__ flags; scalar_t__ fce_dma; int /*<<< orphan*/ * fce; TYPE_1__* pdev; struct fwdt* fwdt; } ;
struct fwdt {scalar_t__ length; int /*<<< orphan*/ * template; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFT_SIZE ; 
 int /*<<< orphan*/  FCE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct qla_hw_data *ha)
{
	struct fwdt *fwdt = ha->fwdt;
	uint j;

	if (ha->fce)
		FUNC0(&ha->pdev->dev,
		    FCE_SIZE, ha->fce, ha->fce_dma);

	if (ha->eft)
		FUNC0(&ha->pdev->dev,
		    EFT_SIZE, ha->eft, ha->eft_dma);

	if (ha->fw_dump)
		FUNC1(ha->fw_dump);

	ha->fce = NULL;
	ha->fce_dma = 0;
	ha->flags.fce_enabled = 0;
	ha->eft = NULL;
	ha->eft_dma = 0;
	ha->fw_dumped = 0;
	ha->fw_dump_cap_flags = 0;
	ha->fw_dump_reading = 0;
	ha->fw_dump = NULL;
	ha->fw_dump_len = 0;

	for (j = 0; j < 2; j++, fwdt++) {
		if (fwdt->template)
			FUNC1(fwdt->template);
		fwdt->template = NULL;
		fwdt->length = 0;
	}
}