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
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct scsi_target {scalar_t__ channel; int /*<<< orphan*/  id; TYPE_1__ dev; } ;
struct ahc_softc {int dummy; } ;
struct ahc_devinfo {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  this_id; scalar_t__ hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHC_TRANS_GOAL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  ROLE_INITIATOR ; 
 int /*<<< orphan*/  FUNC0 (struct ahc_devinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ahc_softc*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahc_softc*,struct ahc_devinfo*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ahc_softc*,unsigned long*) ; 
 struct Scsi_Host* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct scsi_target *starget, int width)
{
	struct Scsi_Host *shost = FUNC4(starget->dev.parent);
	struct ahc_softc *ahc = *((struct ahc_softc **)shost->hostdata);
	struct ahc_devinfo devinfo;
	unsigned long flags;

	FUNC0(&devinfo, shost->this_id, starget->id, 0,
			    starget->channel + 'A', ROLE_INITIATOR);
	FUNC1(ahc, &flags);
	FUNC2(ahc, &devinfo, width, AHC_TRANS_GOAL, FALSE);
	FUNC3(ahc, &flags);
}