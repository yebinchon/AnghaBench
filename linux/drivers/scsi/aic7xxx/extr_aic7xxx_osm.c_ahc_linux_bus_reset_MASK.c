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
struct scsi_cmnd {TYPE_2__* device; } ;
struct ahc_softc {int dummy; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 int SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct ahc_softc*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahc_softc*) ; 
 int FUNC2 (struct ahc_softc*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ahc_softc*,unsigned long*) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct scsi_cmnd*) ; 

__attribute__((used)) static int
FUNC6(struct scsi_cmnd *cmd)
{
	struct ahc_softc *ahc;
	int    found;
	unsigned long flags;

	ahc = *(struct ahc_softc **)cmd->device->host->hostdata;

	FUNC0(ahc, &flags);
	found = FUNC2(ahc, FUNC5(cmd) + 'A',
				  /*initiate reset*/TRUE);
	FUNC3(ahc, &flags);

	if (bootverbose)
		FUNC4("%s: SCSI bus reset delivered. "
		       "%d SCBs aborted.\n", FUNC1(ahc), found);

	return SUCCESS;
}