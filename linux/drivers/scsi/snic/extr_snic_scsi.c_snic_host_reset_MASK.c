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
typedef  int /*<<< orphan*/  ulong ;
typedef  scalar_t__ u32 ;
struct scsi_cmnd {int /*<<< orphan*/  request; int /*<<< orphan*/ * cmnd; TYPE_1__* device; } ;
struct Scsi_Host {int /*<<< orphan*/  host_no; } ;
struct TYPE_2__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scsi_cmnd*) ; 
 int FAILED ; 
 int /*<<< orphan*/  FUNC1 (struct Scsi_Host*,char*,struct scsi_cmnd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*) ; 
 int FUNC7 (struct Scsi_Host*,struct scsi_cmnd*) ; 

int
FUNC8(struct scsi_cmnd *sc)
{
	struct Scsi_Host *shost = sc->device->host;
	u32 start_time  = jiffies;
	int ret = FAILED;

	FUNC1(shost,
		      "host reset:sc %p sc_cmd 0x%x req %p tag %d flags 0x%llx\n",
		      sc, sc->cmnd[0], sc->request,
		      FUNC6(sc), FUNC0(sc));

	ret = FUNC7(shost, sc);

	FUNC2(shost->host_no, FUNC6(sc), (ulong) sc,
		 FUNC5(jiffies - start_time),
		 0, FUNC3(sc), FUNC4(sc));

	return ret;
}