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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int uint16_t ;
struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct qla_hw_data {scalar_t__ flt; } ;
struct qla_flt_region {scalar_t__ start; } ;
struct qla_flt_header {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct qla_flt_region*,int) ; 

__attribute__((used)) static int
FUNC2(struct scsi_qla_host *vha, uint32_t start,
    struct qla_flt_region *region)
{
	struct qla_hw_data *ha = vha->hw;
	struct qla_flt_header *flt;
	struct qla_flt_region *flt_reg;
	uint16_t cnt;
	int rval = QLA_FUNCTION_FAILED;

	if (!ha->flt)
		return QLA_FUNCTION_FAILED;

	flt = (struct qla_flt_header *)ha->flt;
	flt_reg = (struct qla_flt_region *)&flt[1];
	cnt = FUNC0(flt->length) / sizeof(struct qla_flt_region);

	for (; cnt; cnt--, flt_reg++) {
		if (flt_reg->start == start) {
			FUNC1((uint8_t *)region, flt_reg,
			    sizeof(struct qla_flt_region));
			rval = QLA_SUCCESS;
			break;
		}
	}

	return rval;
}