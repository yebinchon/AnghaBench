#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct qla_hw_data {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  d_id; struct qla_hw_data* hw; } ;
typedef  TYPE_1__ scsi_qla_host_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 

int
FUNC4(scsi_qla_host_t *vha)
{
	struct qla_hw_data *ha = vha->hw;

	if (FUNC0(ha) || FUNC1(ha))
		return FUNC2(vha);

	return FUNC3(vha, &vha->d_id);
}