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
typedef  int u32 ;
struct intel_scu_ipc_dev {int /*<<< orphan*/  ipc_base; int /*<<< orphan*/  cmd_complete; scalar_t__ irq_mode; } ;

/* Variables and functions */
 int IPC_IOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct intel_scu_ipc_dev *scu, u32 cmd)
{
	if (scu->irq_mode) {
		FUNC0(&scu->cmd_complete);
		FUNC1(cmd | IPC_IOC, scu->ipc_base);
	}
	FUNC1(cmd, scu->ipc_base);
}