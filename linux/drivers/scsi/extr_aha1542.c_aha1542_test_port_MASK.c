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
typedef  int u8 ;
struct Scsi_Host {int /*<<< orphan*/  io_port; } ;

/* Variables and functions */
 int CDF ; 
 int /*<<< orphan*/  CMD_INQUIRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int DF ; 
 int DIAGF ; 
 int HACC ; 
 int IDLE ; 
 int INIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int INTRMASK ; 
 int INVDCMD ; 
 int IRST ; 
 int SRST ; 
 int STATMASK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int STST ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct Scsi_Host *sh)
{
	u8 inquiry_result[4];
	int i;

	/* Quick and dirty test for presence of the card. */
	if (FUNC6(FUNC3(sh->io_port)) == 0xff)
		return 0;

	/* Reset the adapter. I ought to make a hard reset, but it's not really necessary */

	/* In case some other card was probing here, reset interrupts */
	FUNC4(sh->io_port);	/* reset interrupts, so they don't block */

	FUNC8(SRST | IRST /*|SCRST */ , FUNC0(sh->io_port));

	FUNC7(20);		/* Wait a little bit for things to settle down. */

	/* Expect INIT and IDLE, any of the others are bad */
	if (!FUNC9(FUNC3(sh->io_port), STATMASK, INIT | IDLE, STST | DIAGF | INVDCMD | DF | CDF, 0))
		return 0;

	/* Shouldn't have generated any interrupts during reset */
	if (FUNC6(FUNC2(sh->io_port)) & INTRMASK)
		return 0;

	/* Perform a host adapter inquiry instead so we do not need to set
	   up the mailboxes ahead of time */

	FUNC5(sh->io_port, CMD_INQUIRY);

	for (i = 0; i < 4; i++) {
		if (!FUNC9(FUNC3(sh->io_port), DF, DF, 0, 0))
			return 0;
		inquiry_result[i] = FUNC6(FUNC1(sh->io_port));
	}

	/* Reading port should reset DF */
	if (FUNC6(FUNC3(sh->io_port)) & DF)
		return 0;

	/* When HACC, command is completed, and we're though testing */
	if (!FUNC9(FUNC2(sh->io_port), HACC, HACC, 0, 0))
		return 0;

	/* Clear interrupts */
	FUNC8(IRST, FUNC0(sh->io_port));

	return 1;
}