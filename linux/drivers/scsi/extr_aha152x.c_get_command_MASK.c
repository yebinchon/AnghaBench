#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct seq_file {int dummy; } ;
struct TYPE_4__ {int phase; int /*<<< orphan*/  buffer; int /*<<< orphan*/  this_residual; } ;
struct scsi_cmnd {TYPE_2__ SCp; int /*<<< orphan*/ * cmnd; TYPE_1__* device; } ;
struct TYPE_3__ {scalar_t__ lun; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_cmnd*) ; 
 int aborted ; 
 int completed ; 
 int disconnected ; 
 int identified ; 
 int not_issued ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*) ; 
 int selecting ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,struct scsi_cmnd*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int spiordy ; 
 int syncneg ; 

__attribute__((used)) static void FUNC6(struct seq_file *m, struct scsi_cmnd * ptr)
{
	int i;

	FUNC3(m, "%p: target=%d; lun=%d; cmnd=( ",
		ptr, ptr->device->id, (u8)ptr->device->lun);

	for (i = 0; i < FUNC0(ptr->cmnd[0]); i++)
		FUNC3(m, "0x%02x ", ptr->cmnd[i]);

	FUNC3(m, "); resid=%d; residual=%d; buffers=%d; phase |",
		FUNC2(ptr), ptr->SCp.this_residual,
		FUNC5(ptr->SCp.buffer) - 1);

	if (ptr->SCp.phase & not_issued)
		FUNC4(m, "not issued|");
	if (ptr->SCp.phase & selecting)
		FUNC4(m, "selecting|");
	if (ptr->SCp.phase & disconnected)
		FUNC4(m, "disconnected|");
	if (ptr->SCp.phase & aborted)
		FUNC4(m, "aborted|");
	if (ptr->SCp.phase & identified)
		FUNC4(m, "identified|");
	if (ptr->SCp.phase & completed)
		FUNC4(m, "completed|");
	if (ptr->SCp.phase & spiordy)
		FUNC4(m, "spiordy|");
	if (ptr->SCp.phase & syncneg)
		FUNC4(m, "syncneg|");
	FUNC3(m, "; next=0x%p\n", FUNC1(ptr));
}