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
typedef  int /*<<< orphan*/  uint16_t ;
struct seq_file {struct scsi_qla_host* private; } ;
struct scsi_qla_host {int dummy; } ;

/* Variables and functions */
 int MAX_IOCB_MB_REG ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  SIZEOF_IOCB_MB_REG ; 
 int FUNC0 (struct scsi_qla_host*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 

__attribute__((used)) static int
FUNC3(struct seq_file *s, void *unused)
{
	struct scsi_qla_host *vha = s->private;
	uint16_t mb[MAX_IOCB_MB_REG];
	int rc;

	rc = FUNC0(vha, mb, SIZEOF_IOCB_MB_REG);
	if (rc != QLA_SUCCESS) {
		FUNC1(s, "Mailbox Command failed %d, mb %#x", rc, mb[0]);
	} else {
		FUNC2(s, "FW Resource count\n\n");
		FUNC1(s, "Original TGT exchg count[%d]\n", mb[1]);
		FUNC1(s, "current TGT exchg count[%d]\n", mb[2]);
		FUNC1(s, "original Initiator Exchange count[%d]\n", mb[3]);
		FUNC1(s, "Current Initiator Exchange count[%d]\n", mb[6]);
		FUNC1(s, "Original IOCB count[%d]\n", mb[7]);
		FUNC1(s, "Current IOCB count[%d]\n", mb[10]);
		FUNC1(s, "MAX VP count[%d]\n", mb[11]);
		FUNC1(s, "MAX FCF count[%d]\n", mb[12]);
		FUNC1(s, "Current free pageable XCB buffer cnt[%d]\n",
		    mb[20]);
		FUNC1(s, "Original Initiator fast XCB buffer cnt[%d]\n",
		    mb[21]);
		FUNC1(s, "Current free Initiator fast XCB buffer cnt[%d]\n",
		    mb[22]);
		FUNC1(s, "Original Target fast XCB buffer cnt[%d]\n",
		    mb[23]);

	}

	return 0;
}