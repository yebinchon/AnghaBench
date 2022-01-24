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
struct qla_hw_data {int /*<<< orphan*/ * msixbase; int /*<<< orphan*/ * mqiobase; int /*<<< orphan*/ * cregbase; int /*<<< orphan*/ * iobase; scalar_t__ nxdb_wr_ptr; scalar_t__ nx_pcibase; } ;
typedef  int /*<<< orphan*/  device_reg_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 scalar_t__ FUNC2 (struct qla_hw_data*) ; 
 scalar_t__ FUNC3 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ql2xdbwr ; 

__attribute__((used)) static void
FUNC5(struct qla_hw_data *ha)
{
	if (FUNC2(ha)) {

		FUNC4((device_reg_t *)ha->nx_pcibase);
		if (!ql2xdbwr)
			FUNC4((device_reg_t *)ha->nxdb_wr_ptr);
	} else {
		if (ha->iobase)
			FUNC4(ha->iobase);

		if (ha->cregbase)
			FUNC4(ha->cregbase);

		if (ha->mqiobase)
			FUNC4(ha->mqiobase);

		if ((FUNC3(ha) || FUNC0(ha) || FUNC1(ha)) &&
		    ha->msixbase)
			FUNC4(ha->msixbase);
	}
}