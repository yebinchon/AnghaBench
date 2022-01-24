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
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef  int /*<<< orphan*/  FAS216_Info ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_RESETCHIP ; 
 int /*<<< orphan*/  REG_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*) ; 

void FUNC4(struct Scsi_Host *host)
{
	FAS216_Info *info = (FAS216_Info *)host->hostdata;

	FUNC0(info);
	FUNC3(host);

	FUNC1(info, REG_CMD, CMD_RESETCHIP);
	FUNC2(host);
}