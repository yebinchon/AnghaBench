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
struct scsi_cmnd {TYPE_1__* device; } ;
struct fdomain {scalar_t__ chip; scalar_t__ base; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 scalar_t__ REG_FIFO ; 
 scalar_t__ REG_FIFO_COUNT ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned char*,size_t) ; 
 size_t FUNC3 (struct scsi_cmnd*) ; 
 size_t FUNC4 (struct scsi_cmnd*) ; 
 unsigned char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_cmnd*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_cmnd*) ; 
 struct fdomain* FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ tmc18c30 ; 

__attribute__((used)) static void FUNC11(struct scsi_cmnd *cmd)
{
	struct fdomain *fd = FUNC10(cmd->device->host);
	/* 8k FIFO for pre-tmc18c30 chips, 2k FIFO for tmc18c30 */
	int FIFO_Size = fd->chip == tmc18c30 ? 0x800 : 0x2000;
	unsigned char *virt, *ptr;
	size_t offset, len;

	while ((len = FIFO_Size - FUNC0(fd->base + REG_FIFO_COUNT)) > 512) {
		offset = FUNC3(cmd) - FUNC4(cmd);
		if (len + offset > FUNC3(cmd)) {
			len = FUNC3(cmd) - offset;
			if (len == 0)
				break;
		}
		virt = FUNC5(FUNC9(cmd), FUNC8(cmd),
					   &offset, &len);
		ptr = virt + offset;
		if (len & 1)
			FUNC1(*ptr++, fd->base + REG_FIFO);
		if (len > 1)
			FUNC2(fd->base + REG_FIFO, ptr, len >> 1);
		FUNC7(cmd, FUNC4(cmd) - len);
		FUNC6(virt);
	}
}