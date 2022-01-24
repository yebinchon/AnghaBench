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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  numdl; int /*<<< orphan*/  numdu; } ;
struct nvme_command {TYPE_1__ get_log_page; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

u32 FUNC1(struct nvme_command *cmd)
{
	u32 len = FUNC0(cmd->get_log_page.numdu);

	len <<= 16;
	len += FUNC0(cmd->get_log_page.numdl);
	/* NUMD is a 0's based value */
	len += 1;
	len *= sizeof(u32);

	return len;
}