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
struct fdomain {scalar_t__ base; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 scalar_t__ REG_FIFO ; 
 scalar_t__ REG_FIFO_COUNT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned char*,size_t) ; 
 size_t FUNC2 (scalar_t__) ; 
 size_t FUNC3 (struct scsi_cmnd*) ; 
 size_t FUNC4 (struct scsi_cmnd*) ; 
 unsigned char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_cmnd*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_cmnd*) ; 
 struct fdomain* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct scsi_cmnd *cmd)
{
	struct fdomain *fd = FUNC10(cmd->device->host);
	unsigned char *virt, *ptr;
	size_t offset, len;

	while ((len = FUNC2(fd->base + REG_FIFO_COUNT)) > 0) {
		offset = FUNC3(cmd) - FUNC4(cmd);
		virt = FUNC5(FUNC9(cmd), FUNC8(cmd),
					   &offset, &len);
		ptr = virt + offset;
		if (len & 1)
			*ptr++ = FUNC0(fd->base + REG_FIFO);
		if (len > 1)
			FUNC1(fd->base + REG_FIFO, ptr, len >> 1);
		FUNC7(cmd, FUNC4(cmd) - len);
		FUNC6(virt);
	}
}