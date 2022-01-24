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
struct bfad_s {int /*<<< orphan*/  bfad_lock; int /*<<< orphan*/  bfa; } ;
struct bfa_bsg_port_cfg_s {int /*<<< orphan*/  status; int /*<<< orphan*/  param; } ;

/* Variables and functions */
 unsigned int IOCMD_PORT_CFG_ALPA ; 
 unsigned int IOCMD_PORT_CFG_SPEED ; 
 unsigned int IOCMD_PORT_CFG_TOPO ; 
 unsigned int IOCMD_PORT_CLR_ALPA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC6(struct bfad_s *bfad, void *iocmd, unsigned int v_cmd)
{
	struct bfa_bsg_port_cfg_s *cmd = (struct bfa_bsg_port_cfg_s *)iocmd;
	unsigned long	flags;

	FUNC4(&bfad->bfad_lock, flags);
	if (v_cmd == IOCMD_PORT_CFG_TOPO)
		cmd->status = FUNC2(&bfad->bfa, cmd->param);
	else if (v_cmd == IOCMD_PORT_CFG_SPEED)
		cmd->status = FUNC1(&bfad->bfa, cmd->param);
	else if (v_cmd == IOCMD_PORT_CFG_ALPA)
		cmd->status = FUNC0(&bfad->bfa, cmd->param);
	else if (v_cmd == IOCMD_PORT_CLR_ALPA)
		cmd->status = FUNC3(&bfad->bfa);
	FUNC5(&bfad->bfad_lock, flags);

	return 0;
}