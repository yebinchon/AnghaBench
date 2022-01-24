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
struct scsi_cmnd {int flags; int /*<<< orphan*/  sense_buffer; } ;
struct request {int dummy; } ;
struct blk_mq_tag_set {int dummy; } ;

/* Variables and functions */
 int SCMD_UNCHECKED_ISA_DMA ; 
 struct scsi_cmnd* FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct blk_mq_tag_set *set, struct request *rq,
				 unsigned int hctx_idx)
{
	struct scsi_cmnd *cmd = FUNC0(rq);

	FUNC1(cmd->flags & SCMD_UNCHECKED_ISA_DMA,
			       cmd->sense_buffer);
}