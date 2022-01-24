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
struct Scsi_Host {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  Status; } ;
struct TYPE_4__ {TYPE_1__ SCp; } ;

/* Variables and functions */
 TYPE_2__* CURRENT_SC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCSIDAT ; 
 int /*<<< orphan*/  SPIORDY ; 
 int /*<<< orphan*/  SSTAT0 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct Scsi_Host *shpnt)
{
	if (FUNC1(SSTAT0, SPIORDY))
		return;

	CURRENT_SC->SCp.Status = FUNC0(SCSIDAT);

}