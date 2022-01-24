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
typedef  int u64 ;
typedef  size_t u32 ;
typedef  int u16 ;
struct sgentry {int dummy; } ;
struct scsi_cmnd {int dummy; } ;
struct fib {struct aac_dev* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  count; } ;
struct aac_read {TYPE_2__ sg; void* count; void* block; void* cid; void* command; } ;
struct aac_fibhdr {int dummy; } ;
struct aac_dev {int max_fib_size; TYPE_1__* fsa_dev; } ;
typedef  int /*<<< orphan*/  fib_callback ;
struct TYPE_3__ {size_t block_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ContainerCommand ; 
 int /*<<< orphan*/  FsaNormal ; 
 size_t VM_CtBlockRead ; 
 long FUNC1 (struct scsi_cmnd*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct fib*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct fib*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,void*) ; 
 void* FUNC4 (size_t) ; 
 scalar_t__ FUNC5 (struct fib*) ; 
 scalar_t__ io_callback ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 size_t FUNC7 (struct scsi_cmnd*) ; 

__attribute__((used)) static int FUNC8(struct fib * fib, struct scsi_cmnd * cmd, u64 lba, u32 count)
{
	u16 fibsize;
	struct aac_read *readcmd;
	struct aac_dev *dev = fib->dev;
	long ret;

	FUNC2(fib);
	readcmd = (struct aac_read *) FUNC5(fib);
	readcmd->command = FUNC4(VM_CtBlockRead);
	readcmd->cid = FUNC4(FUNC7(cmd));
	readcmd->block = FUNC4((u32)(lba&0xffffffff));
	readcmd->count = FUNC4(count *
		dev->fsa_dev[FUNC7(cmd)].block_size);

	ret = FUNC1(cmd, &readcmd->sg);
	if (ret < 0)
		return ret;
	fibsize = sizeof(struct aac_read) +
			((FUNC6(readcmd->sg.count) - 1) *
			 sizeof (struct sgentry));
	FUNC0 (fibsize > (fib->dev->max_fib_size -
				sizeof(struct aac_fibhdr)));
	/*
	 *	Now send the Fib to the adapter
	 */
	return FUNC3(ContainerCommand,
			  fib,
			  fibsize,
			  FsaNormal,
			  0, 1,
			  (fib_callback) io_callback,
			  (void *) cmd);
}