#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct qla_hw_data {int md_template_size; int md_dump_size; int /*<<< orphan*/ * md_dump; int /*<<< orphan*/ * md_tmplt_hdr; int /*<<< orphan*/  md_tmplt_hdr_dma; TYPE_1__* pdev; } ;
struct TYPE_6__ {struct qla_hw_data* hw; } ;
typedef  TYPE_2__ scsi_qla_host_t ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ql_log_info ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(scsi_qla_host_t *vha)
{
	struct qla_hw_data *ha = vha->hw;

	/* Release the template header allocated */
	if (ha->md_tmplt_hdr) {
		FUNC1(ql_log_info, vha, 0xb048,
		    "Free MiniDump template: %p, size (%d KB)\n",
		    ha->md_tmplt_hdr, ha->md_template_size / 1024);
		FUNC0(&ha->pdev->dev, ha->md_template_size,
		    ha->md_tmplt_hdr, ha->md_tmplt_hdr_dma);
		ha->md_tmplt_hdr = NULL;
	}

	/* Release the template data buffer allocated */
	if (ha->md_dump) {
		FUNC1(ql_log_info, vha, 0xb049,
		    "Free MiniDump memory: %p, size (%d KB)\n",
		    ha->md_dump, ha->md_dump_size / 1024);
		FUNC2(ha->md_dump);
		ha->md_dump_size = 0;
		ha->md_dump = NULL;
	}
}