#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct qla_hw_data {int md_template_size; int md_dump_size; int /*<<< orphan*/ * md_tmplt_hdr; int /*<<< orphan*/  md_tmplt_hdr_dma; TYPE_1__* pdev; } ;
struct TYPE_11__ {struct qla_hw_data* hw; } ;
typedef  TYPE_2__ scsi_qla_host_t ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int,char*) ; 
 int /*<<< orphan*/  ql_dbg_p3p ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int,char*,int,...) ; 
 int /*<<< orphan*/  ql_log_info ; 
 int FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*) ; 

void
FUNC8(scsi_qla_host_t *vha)
{
	struct qla_hw_data *ha = vha->hw;
	int rval;

	/* Get Minidump template size */
	rval = FUNC7(vha);
	if (rval == QLA_SUCCESS) {
		FUNC3(ql_log_info, vha, 0xb04a,
		    "MiniDump Template size obtained (%d KB)\n",
		    ha->md_template_size / 1024);

		/* Get Minidump template */
		if (FUNC0(ha))
			rval = FUNC4(vha);
		else
			rval = FUNC6(vha);

		if (rval == QLA_SUCCESS) {
			FUNC2(ql_dbg_p3p, vha, 0xb04b,
			    "MiniDump Template obtained\n");

			/* Allocate memory for minidump */
			rval = FUNC5(vha);
			if (rval == QLA_SUCCESS)
				FUNC3(ql_log_info, vha, 0xb04c,
				    "MiniDump memory allocated (%d KB)\n",
				    ha->md_dump_size / 1024);
			else {
				FUNC3(ql_log_info, vha, 0xb04d,
				    "Free MiniDump template: %p, size: (%d KB)\n",
				    *ha->md_tmplt_hdr,
				    ha->md_template_size / 1024);
				FUNC1(&ha->pdev->dev,
				    ha->md_template_size,
				    ha->md_tmplt_hdr, ha->md_tmplt_hdr_dma);
				ha->md_tmplt_hdr = NULL;
			}

		}
	}
}