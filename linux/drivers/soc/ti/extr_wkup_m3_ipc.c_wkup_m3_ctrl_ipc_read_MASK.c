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
struct wkup_m3_ipc {scalar_t__ ipc_mem_base; } ;

/* Variables and functions */
 int AM33XX_CTRL_IPC_REG_COUNT ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,char*) ; 
 unsigned int FUNC2 (scalar_t__) ; 

__attribute__((used)) static unsigned int FUNC3(struct wkup_m3_ipc *m3_ipc,
					  int ipc_reg_num)
{
	if (FUNC1(ipc_reg_num < 0 || ipc_reg_num > AM33XX_CTRL_IPC_REG_COUNT,
		 "ipc register operation out of range"))
		return 0;

	return FUNC2(m3_ipc->ipc_mem_base +
		     FUNC0(ipc_reg_num));
}