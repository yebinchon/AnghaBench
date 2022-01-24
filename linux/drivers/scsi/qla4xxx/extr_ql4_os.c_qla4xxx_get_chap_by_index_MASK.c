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
struct TYPE_2__ {int flt_chap_size; } ;
struct scsi_qla_host {scalar_t__ chap_list; TYPE_1__ hw; } ;
struct ql4_chap_table {scalar_t__ cookie; } ;
typedef  int int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  CHAP_VALID_COOKIE ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int MAX_CHAP_ENTRIES_40XX ; 
 int QLA_ERROR ; 
 int QLA_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_qla_host*,char*) ; 

__attribute__((used)) static int FUNC3(struct scsi_qla_host *ha,
				     int16_t chap_index,
				     struct ql4_chap_table **chap_entry)
{
	int rval = QLA_ERROR;
	int max_chap_entries;

	if (!ha->chap_list) {
		FUNC2(KERN_ERR, ha, "CHAP table cache is empty!\n");
		rval = QLA_ERROR;
		goto exit_get_chap;
	}

	if (FUNC1(ha))
		max_chap_entries = (ha->hw.flt_chap_size / 2) /
				   sizeof(struct ql4_chap_table);
	else
		max_chap_entries = MAX_CHAP_ENTRIES_40XX;

	if (chap_index > max_chap_entries) {
		FUNC2(KERN_ERR, ha, "Invalid Chap index\n");
		rval = QLA_ERROR;
		goto exit_get_chap;
	}

	*chap_entry = (struct ql4_chap_table *)ha->chap_list + chap_index;
	if ((*chap_entry)->cookie !=
	     FUNC0(CHAP_VALID_COOKIE)) {
		rval = QLA_ERROR;
		*chap_entry = NULL;
	} else {
		rval = QLA_SUCCESS;
	}

exit_get_chap:
	return rval;
}