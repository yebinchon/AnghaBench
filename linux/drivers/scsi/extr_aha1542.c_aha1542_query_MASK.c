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
struct aha1542_hostdata {int /*<<< orphan*/  bios_translation; } ;
struct Scsi_Host {int /*<<< orphan*/  io_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIOS_TRANSLATION_6432 ; 
 int /*<<< orphan*/  CMD_INQUIRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DF ; 
 int /*<<< orphan*/  HACC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTRMASK ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct Scsi_Host*,char*) ; 
 struct aha1542_hostdata* FUNC9 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct Scsi_Host *sh)
{
	struct aha1542_hostdata *aha1542 = FUNC9(sh);
	u8 inquiry_result[4];
	int i;
	i = FUNC7(FUNC2(sh->io_port));
	if (i & DF) {
		i = FUNC7(FUNC0(sh->io_port));
	};
	FUNC6(sh->io_port, CMD_INQUIRY);
	FUNC3(sh->io_port, inquiry_result, 4, 0);
	if (!FUNC10(FUNC1(sh->io_port), INTRMASK, HACC, 0, 0))
		FUNC8(KERN_ERR, sh, "error querying card type\n");
	FUNC4(sh->io_port);

	aha1542->bios_translation = BIOS_TRANSLATION_6432;	/* Default case */

	/* For an AHA1740 series board, we ignore the board since there is a
	   hardware bug which can lead to wrong blocks being returned if the board
	   is operating in the 1542 emulation mode.  Since there is an extended mode
	   driver, we simply ignore the board and let the 1740 driver pick it up.
	 */

	if (inquiry_result[0] == 0x43) {
		FUNC8(KERN_INFO, sh, "Emulation mode not supported for AHA-1740 hardware, use aha1740 driver instead.\n");
		return 1;
	};

	/* Always call this - boards that do not support extended bios translation
	   will ignore the command, and we will set the proper default */

	aha1542->bios_translation = FUNC5(sh);

	return 0;
}