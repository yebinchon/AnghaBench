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
struct qla_hw_data {scalar_t__ exlogin_size; int /*<<< orphan*/ * exlogin_buf; int /*<<< orphan*/  exlogin_buf_dma; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC1(struct qla_hw_data *ha)
{
	if (ha->exlogin_buf) {
		FUNC0(&ha->pdev->dev, ha->exlogin_size,
		    ha->exlogin_buf, ha->exlogin_buf_dma);
		ha->exlogin_buf = NULL;
		ha->exlogin_size = 0;
	}
}