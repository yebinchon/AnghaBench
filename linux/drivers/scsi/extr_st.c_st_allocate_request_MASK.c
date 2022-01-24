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
struct st_request {struct scsi_tape* stp; } ;
struct scsi_tape {TYPE_1__* buffer; } ;
struct TYPE_2__ {int /*<<< orphan*/  syscall_result; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EINTR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  current ; 
 struct st_request* FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_tape*,char*) ; 

__attribute__((used)) static struct st_request *FUNC3(struct scsi_tape *stp)
{
	struct st_request *streq;

	streq = FUNC0(sizeof(*streq), GFP_KERNEL);
	if (streq)
		streq->stp = stp;
	else {
		FUNC2(KERN_ERR, stp,
			  "Can't get SCSI request.\n");
		if (FUNC1(current))
			stp->buffer->syscall_result = -EINTR;
		else
			stp->buffer->syscall_result = -EBUSY;
	}

	return streq;
}