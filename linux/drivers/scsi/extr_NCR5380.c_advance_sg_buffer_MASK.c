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
struct TYPE_2__ {struct scatterlist* buffer; scalar_t__ this_residual; int /*<<< orphan*/  ptr; } ;
struct scsi_cmnd {TYPE_1__ SCp; } ;
struct scatterlist {scalar_t__ length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scatterlist*) ; 
 struct scatterlist* FUNC1 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*) ; 

__attribute__((used)) static inline void FUNC3(struct scsi_cmnd *cmd)
{
	struct scatterlist *s = cmd->SCp.buffer;

	if (!cmd->SCp.this_residual && s && !FUNC0(s)) {
		cmd->SCp.buffer = FUNC1(s);
		cmd->SCp.ptr = FUNC2(cmd->SCp.buffer);
		cmd->SCp.this_residual = cmd->SCp.buffer->length;
	}
}