#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct Scsi_Host {int dummy; } ;
struct TYPE_4__ {int phase; } ;
struct TYPE_6__ {TYPE_1__ SCp; } ;
struct TYPE_5__ {int /*<<< orphan*/  in_intr; } ;

/* Variables and functions */
 TYPE_3__* CURRENT_SC ; 
 scalar_t__ DISCONNECTED_SC ; 
 int /*<<< orphan*/  DMACNTRL0 ; 
 int /*<<< orphan*/  DMASTAT ; 
 scalar_t__ DONE_SC ; 
 int ENBUSFREE ; 
 int ENPHASEMIS ; 
 int ENSCSIPERR ; 
 int ENSCSIRST ; 
 int ENSELDI ; 
 int ENSELDO ; 
 int ENSELTIMO ; 
 int ENSPIORDY ; 
 TYPE_2__* FUNC0 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  INTEN ; 
 int /*<<< orphan*/  INTSTAT ; 
 scalar_t__ ISSUE_SC ; 
 int SELTO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SIMODE0 ; 
 int /*<<< orphan*/  SIMODE1 ; 
 int /*<<< orphan*/  SSTAT1 ; 
 scalar_t__ STATE ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ seldi ; 
 int selecting ; 
 int spiordy ; 

__attribute__((used)) static int FUNC4(struct Scsi_Host *shpnt)
{
	if(CURRENT_SC) {
		CURRENT_SC->SCp.phase |= 1 << 16;

		if(CURRENT_SC->SCp.phase & selecting) {
			FUNC2(SSTAT1, SELTO);
			FUNC2(SIMODE0, ENSELDO | (DISCONNECTED_SC ? ENSELDI : 0));
			FUNC2(SIMODE1, ENSELTIMO);
		} else {
			FUNC2(SIMODE0, (CURRENT_SC->SCp.phase & spiordy) ? ENSPIORDY : 0);
			FUNC2(SIMODE1, ENPHASEMIS | ENSCSIRST | ENSCSIPERR | ENBUSFREE);
		}
	} else if(STATE==seldi) {
		FUNC2(SIMODE0, 0);
		FUNC2(SIMODE1, ENPHASEMIS | ENSCSIRST | ENSCSIPERR | ENBUSFREE);
	} else {
		FUNC2(SIMODE0, DISCONNECTED_SC ? ENSELDI : 0);
		FUNC2(SIMODE1, ENSCSIRST | ( (ISSUE_SC||DONE_SC) ? ENBUSFREE : 0));
	}

	if(!FUNC0(shpnt)->in_intr)
		FUNC1(DMACNTRL0, INTEN);

	return FUNC3(DMASTAT, INTSTAT);
}