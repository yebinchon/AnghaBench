#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {int cmd_len; int /*<<< orphan*/ * cmnd; TYPE_1__* device; } ;
struct TYPE_6__ {int /*<<< orphan*/  base; } ;
typedef  TYPE_2__ ppa_struct ;
struct TYPE_5__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int FUNC3(struct scsi_cmnd *cmd)
{
	ppa_struct *dev = FUNC0(cmd->device->host);
	int k;

	FUNC2(dev->base, 0x0c);

	for (k = 0; k < cmd->cmd_len; k++)
		if (!FUNC1(dev, &cmd->cmnd[k], 1))
			return 0;
	return 1;
}