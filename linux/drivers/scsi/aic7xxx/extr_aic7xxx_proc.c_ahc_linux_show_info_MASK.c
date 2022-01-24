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
typedef  char* uint16_t ;
typedef  int u_int ;
struct seq_file {int dummy; } ;
struct ahc_softc {char* description; int features; int our_id; int our_id_b; int /*<<< orphan*/ * seep_config; TYPE_1__* scb_data; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct TYPE_2__ {int /*<<< orphan*/  numscbs; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHC_NSEG ; 
 int AHC_TWIN ; 
 int AHC_WIDE ; 
 char* AIC7XXX_DRIVER_VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct ahc_softc*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahc_softc*,struct seq_file*,int,char,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 

int
FUNC5(struct seq_file *m, struct Scsi_Host *shost)
{
	struct	ahc_softc *ahc = *(struct ahc_softc **)shost->hostdata;
	char	ahc_info[256];
	u_int	max_targ;
	u_int	i;

	FUNC2(m, "Adaptec AIC7xxx driver version: %s\n",
		  AIC7XXX_DRIVER_VERSION);
	FUNC2(m, "%s\n", ahc->description);
	FUNC0(ahc, ahc_info);
	FUNC2(m, "%s\n", ahc_info);
	FUNC2(m, "Allocated SCBs: %d, SG List Length: %d\n\n",
		  ahc->scb_data->numscbs, AHC_NSEG);


	if (ahc->seep_config == NULL)
		FUNC4(m, "No Serial EEPROM\n");
	else {
		FUNC4(m, "Serial EEPROM:\n");
		for (i = 0; i < sizeof(*ahc->seep_config)/2; i++) {
			if (((i % 8) == 0) && (i != 0)) {
				FUNC3(m, '\n');
			}
			FUNC2(m, "0x%.4x ",
				  ((uint16_t*)ahc->seep_config)[i]);
		}
		FUNC3(m, '\n');
	}
	FUNC3(m, '\n');

	max_targ = 16;
	if ((ahc->features & (AHC_WIDE|AHC_TWIN)) == 0)
		max_targ = 8;

	for (i = 0; i < max_targ; i++) {
		u_int our_id;
		u_int target_id;
		char channel;

		channel = 'A';
		our_id = ahc->our_id;
		target_id = i;
		if (i > 7 && (ahc->features & AHC_TWIN) != 0) {
			channel = 'B';
			our_id = ahc->our_id_b;
			target_id = i % 8;
		}

		FUNC1(ahc, m, our_id,
				      channel, target_id, i);
	}
	return 0;
}