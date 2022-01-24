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
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {scalar_t__ commands; } ;

/* Variables and functions */
 int DELAY ; 
 int /*<<< orphan*/  DISCONNECTED_SC ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 TYPE_1__* FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  ISSUE_SC ; 
 int /*<<< orphan*/  PORTA ; 
 int /*<<< orphan*/  SCSIRSTO ; 
 int /*<<< orphan*/  SCSISEQ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (struct Scsi_Host*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct Scsi_Host*) ; 

__attribute__((used)) static int FUNC7(struct Scsi_Host *shpnt)
{
	unsigned long flags;

	FUNC0(flags);

	FUNC4(shpnt, &ISSUE_SC);
	FUNC4(shpnt, &DISCONNECTED_SC);

	FUNC3(SCSISEQ, SCSIRSTO);
	FUNC5(256);
	FUNC3(SCSISEQ, 0);
	FUNC5(DELAY);

	FUNC6(shpnt);
	if(FUNC2(shpnt)->commands==0)
		FUNC3(PORTA, 0);

	FUNC1(flags);

	return SUCCESS;
}