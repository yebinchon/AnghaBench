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
struct pqi_ctrl_info {int block_requests; int /*<<< orphan*/  scsi_host; int /*<<< orphan*/  block_requests_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct pqi_ctrl_info *ctrl_info)
{
	ctrl_info->block_requests = false;
	FUNC2(&ctrl_info->block_requests_wait);
	FUNC0(ctrl_info);
	FUNC1(ctrl_info->scsi_host);
}