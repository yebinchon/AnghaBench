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
 int BIOS_TRANSLATION_25563 ; 
 int BIOS_TRANSLATION_6432 ; 
 int /*<<< orphan*/  CMD_EXTBIOS ; 
 int CMD_MBENABLE ; 
 int /*<<< orphan*/  HACC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTRMASK ; 
 int /*<<< orphan*/  KERN_ERR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct Scsi_Host*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct Scsi_Host *sh)
{
	static u8 mbenable_cmd[3];
	static u8 mbenable_result[2];
	int retval;

	retval = BIOS_TRANSLATION_6432;

	FUNC4(sh->io_port, CMD_EXTBIOS);
	if (FUNC1(sh->io_port, mbenable_result, 2, 100))
		return retval;
	if (!FUNC6(FUNC0(sh->io_port), INTRMASK, HACC, 0, 100))
		goto fail;
	FUNC2(sh->io_port);

	if ((mbenable_result[0] & 0x08) || mbenable_result[1]) {
		mbenable_cmd[0] = CMD_MBENABLE;
		mbenable_cmd[1] = 0;
		mbenable_cmd[2] = mbenable_result[1];

		if ((mbenable_result[0] & 0x08) && (mbenable_result[1] & 0x03))
			retval = BIOS_TRANSLATION_25563;

		if (FUNC3(sh->io_port, mbenable_cmd, 3))
			goto fail;
	};
	while (0) {
fail:
		FUNC5(KERN_ERR, sh, "Mailbox init failed\n");
	}
	FUNC2(sh->io_port);
	return retval;
}