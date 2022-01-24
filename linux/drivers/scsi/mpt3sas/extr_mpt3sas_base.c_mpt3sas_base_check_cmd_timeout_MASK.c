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
typedef  int u8 ;
struct MPT3SAS_ADAPTER {int dummy; } ;

/* Variables and functions */
 int MPT3_CMD_RESET ; 
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct MPT3SAS_ADAPTER*,char*,char*) ; 

u8
FUNC2(struct MPT3SAS_ADAPTER *ioc,
		u8 status, void *mpi_request, int sz)
{
	u8 issue_reset = 0;

	if (!(status & MPT3_CMD_RESET))
		issue_reset = 1;

	FUNC1(ioc, "Command %s\n",
		issue_reset == 0 ? "terminated due to Host Reset" : "Timeout");
	FUNC0(mpi_request, sz);

	return issue_reset;
}