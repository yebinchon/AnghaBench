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
struct Scsi_Host {int dummy; } ;
struct MPT3SAS_ADAPTER {int start_scan; } ;

/* Variables and functions */
 int diag_buffer_enable ; 
 scalar_t__ disable_discovery ; 
 int /*<<< orphan*/  FUNC0 (struct MPT3SAS_ADAPTER*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct MPT3SAS_ADAPTER*,int) ; 
 int FUNC2 (struct MPT3SAS_ADAPTER*) ; 
 struct MPT3SAS_ADAPTER* FUNC3 (struct Scsi_Host*) ; 

__attribute__((used)) static void
FUNC4(struct Scsi_Host *shost)
{
	struct MPT3SAS_ADAPTER *ioc = FUNC3(shost);
	int rc;
	if (diag_buffer_enable != -1 && diag_buffer_enable != 0)
		FUNC1(ioc, diag_buffer_enable);

	if (disable_discovery > 0)
		return;

	ioc->start_scan = 1;
	rc = FUNC2(ioc);

	if (rc != 0)
		FUNC0(ioc, "port enable: FAILED\n");
}