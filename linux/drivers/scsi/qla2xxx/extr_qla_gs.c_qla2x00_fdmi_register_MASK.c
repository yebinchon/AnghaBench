#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct qla_hw_data {int dummy; } ;
struct TYPE_9__ {struct qla_hw_data* hw; } ;
typedef  TYPE_1__ scsi_qla_host_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 scalar_t__ FUNC2 (struct qla_hw_data*) ; 
 int QLA_ALREADY_REGISTERED ; 
 int QLA_FUNCTION_FAILED ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*) ; 

int
FUNC9(scsi_qla_host_t *vha)
{
	int rval = QLA_FUNCTION_FAILED;
	struct qla_hw_data *ha = vha->hw;

	if (FUNC0(ha) || FUNC1(ha) ||
	    FUNC2(ha))
		return QLA_FUNCTION_FAILED;

	rval = FUNC8(vha);
	if (rval)
		return rval;

	rval = FUNC6(vha);
	if (rval) {
		if (rval != QLA_ALREADY_REGISTERED)
			goto try_fdmi;

		rval = FUNC3(vha);
		if (rval)
			goto try_fdmi;

		rval = FUNC6(vha);
		if (rval)
			goto try_fdmi;
	}
	rval = FUNC7(vha);
	if (rval)
		goto try_fdmi;

	goto out;

try_fdmi:
	rval = FUNC4(vha);
	if (rval) {
		if (rval != QLA_ALREADY_REGISTERED)
			return rval;

		rval = FUNC3(vha);
		if (rval)
			return rval;

		rval = FUNC4(vha);
		if (rval)
			return rval;
	}
	rval = FUNC5(vha);
out:
	return rval;
}