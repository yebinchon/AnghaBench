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
struct pqi_ctrl_info {int dummy; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct pqi_ctrl_info*) ; 
 struct pqi_ctrl_info* FUNC2 (struct Scsi_Host*) ; 

__attribute__((used)) static void FUNC3(struct Scsi_Host *shost)
{
	struct pqi_ctrl_info *ctrl_info;

	ctrl_info = FUNC2(shost);
	if (FUNC0(ctrl_info))
		return;

	FUNC1(ctrl_info);
}