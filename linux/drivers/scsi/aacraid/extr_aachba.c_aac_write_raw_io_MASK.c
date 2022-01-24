#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct sgentryraw {int dummy; } ;
struct sge_ieee1212 {int dummy; } ;
struct scsi_cmnd {int dummy; } ;
struct fib {struct aac_dev* dev; } ;
struct aac_raw_io2 {int /*<<< orphan*/  sgeCnt; void* flags; void* cid; void* byteCount; void* blockHigh; void* blockLow; } ;
struct TYPE_6__ {int /*<<< orphan*/  count; } ;
struct aac_raw_io {TYPE_3__ sg; scalar_t__ bpComplete; scalar_t__ bpTotal; void* flags; void* cid; void* count; void** block; } ;
struct aac_fibhdr {int dummy; } ;
struct aac_dev {scalar_t__ comm_interface; int max_fib_size; int /*<<< orphan*/  cache_protected; TYPE_2__* fsa_dev; TYPE_1__* scsi_host_ptr; int /*<<< orphan*/  sync_mode; } ;
typedef  int /*<<< orphan*/  fib_callback ;
struct TYPE_5__ {int block_size; } ;
struct TYPE_4__ {int /*<<< orphan*/  sg_tablesize; } ;

/* Variables and functions */
 scalar_t__ AAC_COMM_MESSAGE_TYPE2 ; 
 scalar_t__ AAC_COMM_MESSAGE_TYPE3 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ContainerRawIo ; 
 int ContainerRawIo2 ; 
 int /*<<< orphan*/  FsaNormal ; 
 size_t RIO2_IO_SUREWRITE ; 
 size_t RIO2_IO_TYPE_WRITE ; 
 size_t RIO_SUREWRITE ; 
 size_t RIO_TYPE_WRITE ; 
 long FUNC1 (struct scsi_cmnd*,TYPE_3__*) ; 
 long FUNC2 (struct scsi_cmnd*,struct aac_raw_io2*,int /*<<< orphan*/ ) ; 
 int aac_cache ; 
 int /*<<< orphan*/  FUNC3 (struct fib*) ; 
 int FUNC4 (int,struct fib*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,void*) ; 
 void* FUNC5 (size_t) ; 
 void* FUNC6 (int) ; 
 scalar_t__ FUNC7 (struct fib*) ; 
 scalar_t__ io_callback ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct aac_raw_io2*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC10 (struct scsi_cmnd*) ; 

__attribute__((used)) static int FUNC11(struct fib * fib, struct scsi_cmnd * cmd, u64 lba, u32 count, int fua)
{
	struct aac_dev *dev = fib->dev;
	u16 fibsize, command;
	long ret;

	FUNC3(fib);
	if ((dev->comm_interface == AAC_COMM_MESSAGE_TYPE2 ||
		dev->comm_interface == AAC_COMM_MESSAGE_TYPE3) &&
		!dev->sync_mode) {
		struct aac_raw_io2 *writecmd2;
		writecmd2 = (struct aac_raw_io2 *) FUNC7(fib);
		FUNC9(writecmd2, 0, sizeof(struct aac_raw_io2));
		writecmd2->blockLow = FUNC6((u32)(lba&0xffffffff));
		writecmd2->blockHigh = FUNC6((u32)((lba&0xffffffff00000000LL)>>32));
		writecmd2->byteCount = FUNC6(count *
			dev->fsa_dev[FUNC10(cmd)].block_size);
		writecmd2->cid = FUNC5(FUNC10(cmd));
		writecmd2->flags = (fua && ((aac_cache & 5) != 1) &&
						   (((aac_cache & 5) != 5) || !fib->dev->cache_protected)) ?
			FUNC5(RIO2_IO_TYPE_WRITE|RIO2_IO_SUREWRITE) :
			FUNC5(RIO2_IO_TYPE_WRITE);
		ret = FUNC2(cmd, writecmd2,
				dev->scsi_host_ptr->sg_tablesize);
		if (ret < 0)
			return ret;
		command = ContainerRawIo2;
		fibsize = sizeof(struct aac_raw_io2) +
			((FUNC8(writecmd2->sgeCnt)-1) * sizeof(struct sge_ieee1212));
	} else {
		struct aac_raw_io *writecmd;
		writecmd = (struct aac_raw_io *) FUNC7(fib);
		writecmd->block[0] = FUNC6((u32)(lba&0xffffffff));
		writecmd->block[1] = FUNC6((u32)((lba&0xffffffff00000000LL)>>32));
		writecmd->count = FUNC6(count *
			dev->fsa_dev[FUNC10(cmd)].block_size);
		writecmd->cid = FUNC5(FUNC10(cmd));
		writecmd->flags = (fua && ((aac_cache & 5) != 1) &&
						   (((aac_cache & 5) != 5) || !fib->dev->cache_protected)) ?
			FUNC5(RIO_TYPE_WRITE|RIO_SUREWRITE) :
			FUNC5(RIO_TYPE_WRITE);
		writecmd->bpTotal = 0;
		writecmd->bpComplete = 0;
		ret = FUNC1(cmd, &writecmd->sg);
		if (ret < 0)
			return ret;
		command = ContainerRawIo;
		fibsize = sizeof(struct aac_raw_io) +
			((FUNC8(writecmd->sg.count)-1) * sizeof (struct sgentryraw));
	}

	FUNC0(fibsize > (fib->dev->max_fib_size - sizeof(struct aac_fibhdr)));
	/*
	 *	Now send the Fib to the adapter
	 */
	return FUNC4(command,
			  fib,
			  fibsize,
			  FsaNormal,
			  0, 1,
			  (fib_callback) io_callback,
			  (void *) cmd);
}