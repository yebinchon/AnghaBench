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
struct sym_hcb {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  size; int /*<<< orphan*/  addr; } ;
struct TYPE_4__ {TYPE_1__ cmd; } ;
struct sym_ccb {TYPE_2__ phys; int /*<<< orphan*/  cdb_buf; } ;
struct scsi_cmnd {int /*<<< orphan*/  cmd_len; int /*<<< orphan*/  cmnd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sym_ccb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * cdb_buf ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC3(struct sym_hcb *np, struct scsi_cmnd *cmd, struct sym_ccb *cp)
{
	FUNC2(cp->cdb_buf, cmd->cmnd, cmd->cmd_len);

	cp->phys.cmd.addr = FUNC0(cp, cdb_buf[0]);
	cp->phys.cmd.size = FUNC1(cmd->cmd_len);

	return 0;
}