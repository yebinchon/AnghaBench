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
typedef  int u8 ;
typedef  int u16 ;
struct orc_host {int* target_flag; scalar_t__ base; int /*<<< orphan*/  flags; int /*<<< orphan*/ * max_tags; int /*<<< orphan*/  max_targets; int /*<<< orphan*/  BIOScfg; int /*<<< orphan*/  scsi_id; } ;
struct TYPE_2__ {int revision; int SCSI0Config; int /*<<< orphan*/  Target00Config; int /*<<< orphan*/  BIOSConfig1; int /*<<< orphan*/  scsi_id; } ;

/* Variables and functions */
 int DEVRST ; 
 int /*<<< orphan*/  HCF_SCSI_RESET ; 
 int HDO ; 
 int /*<<< orphan*/  MAX_TARGETS ; 
 int NCC_BUSRESET ; 
 scalar_t__ ORC_GIMSK ; 
 scalar_t__ ORC_HCTRL ; 
 scalar_t__ ORC_HSTUS ; 
 int /*<<< orphan*/  ORC_MAXTAGS ; 
 int RREADY ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct orc_host*) ; 
 TYPE_1__* nvramp ; 
 int /*<<< orphan*/  FUNC2 (struct orc_host*) ; 
 int FUNC3 (struct orc_host*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct orc_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct orc_host*) ; 
 scalar_t__ FUNC7 (struct orc_host*) ; 
 scalar_t__ FUNC8 (struct orc_host*) ; 

__attribute__((used)) static int FUNC9(struct orc_host * host)
{
	u8 *ptr;
	u16 revision;
	u8 i;

	FUNC1(host);
	FUNC4(0xFF, host->base + ORC_GIMSK);	/* Disable all interrupts */

	if (FUNC0(host->base + ORC_HSTUS) & RREADY) {	/* Orchid is ready */
		revision = FUNC3(host);
		if (revision == 0xFFFF) {
			FUNC4(DEVRST, host->base + ORC_HCTRL);	/* Reset Host Adapter   */
			if (FUNC7(host) == 0)
				return -1;
			FUNC2(host);	/* Download FW                  */
			FUNC6(host);	/* Setup SCB base and SCB Size registers */
			FUNC4(0x00, host->base + ORC_HCTRL);	/* clear HOSTSTOP       */
			if (FUNC8(host) == 0)
				return -1;
			/* Wait for firmware ready     */
		} else {
			FUNC6(host);	/* Setup SCB base and SCB Size registers */
		}
	} else {		/* Orchid is not Ready          */
		FUNC4(DEVRST, host->base + ORC_HCTRL);	/* Reset Host Adapter   */
		if (FUNC7(host) == 0)
			return -1;
		FUNC2(host);	/* Download FW                  */
		FUNC6(host);	/* Setup SCB base and SCB Size registers */
		FUNC4(HDO, host->base + ORC_HCTRL);	/* Do Hardware Reset &  */

		/*     clear HOSTSTOP  */
		if (FUNC8(host) == 0)		/* Wait for firmware ready      */
			return -1;
	}

	/* Load an EEProm copy into RAM */
	/* Assumes single threaded at this point */
	FUNC5(host);

	if (nvramp->revision != 1)
		return -1;

	host->scsi_id = nvramp->scsi_id;
	host->BIOScfg = nvramp->BIOSConfig1;
	host->max_targets = MAX_TARGETS;
	ptr = (u8 *) & (nvramp->Target00Config);
	for (i = 0; i < 16; ptr++, i++) {
		host->target_flag[i] = *ptr;
		host->max_tags[i] = ORC_MAXTAGS;
	}

	if (nvramp->SCSI0Config & NCC_BUSRESET)
		host->flags |= HCF_SCSI_RESET;
	FUNC4(0xFB, host->base + ORC_GIMSK);	/* enable RP FIFO interrupt     */
	return 0;
}