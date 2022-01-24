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
struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct qla_hw_data {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 

char *
FUNC2(struct scsi_qla_host *vha, char *str, size_t str_len)
{
	struct qla_hw_data *ha = vha->hw;

	if (FUNC0(ha->pdev))
		FUNC1(str, "PCIe iSA", str_len);
	return str;
}