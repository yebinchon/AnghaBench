#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ phase; } ;
struct scsi_cmnd {TYPE_2__ SCp; TYPE_1__* device; } ;
struct TYPE_9__ {int /*<<< orphan*/  base; int /*<<< orphan*/ * cur_cmd; } ;
typedef  TYPE_3__ ppa_struct ;
struct TYPE_7__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONNECT_NORMAL ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct scsi_cmnd *cmd)
{
	ppa_struct *dev = FUNC2(cmd->device->host);

	if (cmd->SCp.phase)
		FUNC3(dev);
	dev->cur_cmd = NULL;	/* Forget the problem */

	FUNC1(dev, CONNECT_NORMAL);
	FUNC4(dev->base);
	FUNC0(1);		/* device settle delay */
	FUNC3(dev);
	FUNC0(1);		/* device settle delay */
	return SUCCESS;
}