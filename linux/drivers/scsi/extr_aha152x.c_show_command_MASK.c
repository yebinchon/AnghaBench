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
struct TYPE_2__ {int phase; } ;
struct scsi_cmnd {TYPE_1__ SCp; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_DEBUG ; 
 scalar_t__ FUNC0 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/ * FUNC1 (struct scsi_cmnd*) ; 
 int aborted ; 
 int completed ; 
 int disconnected ; 
 int identified ; 
 int not_issued ; 
 int resetted ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*,char*,char*,char*,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_cmnd*) ; 
 int selecting ; 
 int spiordy ; 
 int syncneg ; 

__attribute__((used)) static void FUNC6(struct scsi_cmnd *ptr)
{
	FUNC5(ptr);
	FUNC2(KERN_DEBUG, ptr,
		    "request_bufflen=%d; resid=%d; "
		    "phase |%s%s%s%s%s%s%s%s%s; next=0x%p",
		    FUNC3(ptr), FUNC4(ptr),
		    (ptr->SCp.phase & not_issued) ? "not issued|" : "",
		    (ptr->SCp.phase & selecting) ? "selecting|" : "",
		    (ptr->SCp.phase & identified) ? "identified|" : "",
		    (ptr->SCp.phase & disconnected) ? "disconnected|" : "",
		    (ptr->SCp.phase & completed) ? "completed|" : "",
		    (ptr->SCp.phase & spiordy) ? "spiordy|" : "",
		    (ptr->SCp.phase & syncneg) ? "syncneg|" : "",
		    (ptr->SCp.phase & aborted) ? "aborted|" : "",
		    (ptr->SCp.phase & resetted) ? "resetted|" : "",
		    (FUNC0(ptr)) ? FUNC1(ptr) : NULL);
}