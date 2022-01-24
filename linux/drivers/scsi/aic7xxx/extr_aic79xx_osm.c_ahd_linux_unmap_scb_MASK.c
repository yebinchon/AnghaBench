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
struct scsi_cmnd {int dummy; } ;
struct scb {struct scsi_cmnd* io_ctx; } ;
struct ahd_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*,struct scb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_cmnd*) ; 

__attribute__((used)) static void
FUNC2(struct ahd_softc *ahd, struct scb *scb)
{
	struct scsi_cmnd *cmd;

	cmd = scb->io_ctx;
	FUNC0(ahd, scb, BUS_DMASYNC_POSTWRITE);
	FUNC1(cmd);
}