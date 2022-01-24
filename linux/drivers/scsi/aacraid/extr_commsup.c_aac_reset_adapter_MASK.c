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
typedef  int /*<<< orphan*/  u8 ;
struct fib {int dummy; } ;
struct aac_pause {void* count; void* noRescan; void* min; void* timeout; void* type; void* command; } ;
struct aac_dev {int in_reset; struct Scsi_Host* scsi_host_ptr; int /*<<< orphan*/  fib_lock; } ;
struct Scsi_Host {int /*<<< orphan*/ * host_lock; } ;

/* Variables and functions */
 int CT_PAUSE_IO ; 
 int /*<<< orphan*/  ContainerCommand ; 
 int EBUSY ; 
 int ENODEV ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FsaNormal ; 
 int VM_ContainerConfig ; 
 int FUNC0 (struct aac_dev*,int,int /*<<< orphan*/ ) ; 
 int aac_check_reset ; 
 struct fib* FUNC1 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct fib*) ; 
 int /*<<< orphan*/  FUNC3 (struct fib*) ; 
 int /*<<< orphan*/  FUNC4 (struct fib*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct fib*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct aac_dev*) ; 
 void* FUNC7 (int) ; 
 scalar_t__ FUNC8 (struct fib*) ; 
 int /*<<< orphan*/  FUNC9 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC13(struct aac_dev *aac, int forced, u8 reset_type)
{
	unsigned long flagv = 0;
	int retval;
	struct Scsi_Host * host;
	int bled;

	if (FUNC11(&aac->fib_lock, flagv) == 0)
		return -EBUSY;

	if (aac->in_reset) {
		FUNC12(&aac->fib_lock, flagv);
		return -EBUSY;
	}
	aac->in_reset = 1;
	FUNC12(&aac->fib_lock, flagv);

	/*
	 * Wait for all commands to complete to this specific
	 * target (block maximum 60 seconds). Although not necessary,
	 * it does make us a good storage citizen.
	 */
	host = aac->scsi_host_ptr;
	FUNC9(host);

	/* Quiesce build, flush cache, write through mode */
	if (forced < 2)
		FUNC6(aac);
	FUNC10(host->host_lock, flagv);
	bled = forced ? forced :
			(aac_check_reset != 0 && aac_check_reset != 1);
	retval = FUNC0(aac, bled, reset_type);
	FUNC12(host->host_lock, flagv);

	if ((forced < 2) && (retval == -ENODEV)) {
		/* Unwind aac_send_shutdown() IOP_RESET unsupported/disabled */
		struct fib * fibctx = FUNC1(aac);
		if (fibctx) {
			struct aac_pause *cmd;
			int status;

			FUNC4(fibctx);

			cmd = (struct aac_pause *) FUNC8(fibctx);

			cmd->command = FUNC7(VM_ContainerConfig);
			cmd->type = FUNC7(CT_PAUSE_IO);
			cmd->timeout = FUNC7(1);
			cmd->min = FUNC7(1);
			cmd->noRescan = FUNC7(1);
			cmd->count = FUNC7(0);

			status = FUNC5(ContainerCommand,
			  fibctx,
			  sizeof(struct aac_pause),
			  FsaNormal,
			  -2 /* Timeout silently */, 1,
			  NULL, NULL);

			if (status >= 0)
				FUNC2(fibctx);
			/* FIB should be freed only after getting
			 * the response from the F/W */
			if (status != -ERESTARTSYS)
				FUNC3(fibctx);
		}
	}

	return retval;
}