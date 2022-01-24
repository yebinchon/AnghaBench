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
typedef  size_t u_int ;
struct seq_file {int dummy; } ;
struct scsi_target {int dummy; } ;
struct scsi_device {int dummy; } ;
struct ahd_tmode_tstate {int dummy; } ;
struct ahd_softc {TYPE_1__* platform_data; } ;
struct ahd_initiator_tinfo {int /*<<< orphan*/  curr; int /*<<< orphan*/  goal; int /*<<< orphan*/  user; } ;
struct TYPE_2__ {struct scsi_target** starget; } ;

/* Variables and functions */
 int AHD_NUM_LUNS ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,struct scsi_device*) ; 
 struct ahd_initiator_tinfo* FUNC1 (struct ahd_softc*,char,size_t,size_t,struct ahd_tmode_tstate**) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,int /*<<< orphan*/ *) ; 
 struct scsi_device* FUNC3 (struct scsi_target*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*) ; 

__attribute__((used)) static void
FUNC6(struct ahd_softc *ahd, struct seq_file *m,
		      u_int our_id, char channel, u_int target_id)
{
	struct  scsi_target *starget;
	struct	ahd_initiator_tinfo *tinfo;
	struct	ahd_tmode_tstate *tstate;
	int	lun;

	tinfo = FUNC1(ahd, channel, our_id,
				    target_id, &tstate);
	FUNC4(m, "Target %d Negotiation Settings\n", target_id);
	FUNC5(m, "\tUser: ");
	FUNC2(m, &tinfo->user);
	starget = ahd->platform_data->starget[target_id];
	if (starget == NULL)
		return;

	FUNC5(m, "\tGoal: ");
	FUNC2(m, &tinfo->goal);
	FUNC5(m, "\tCurr: ");
	FUNC2(m, &tinfo->curr);

	for (lun = 0; lun < AHD_NUM_LUNS; lun++) {
		struct scsi_device *dev;

		dev = FUNC3(starget, lun);

		if (dev == NULL)
			continue;

		FUNC0(m, dev);
	}
}