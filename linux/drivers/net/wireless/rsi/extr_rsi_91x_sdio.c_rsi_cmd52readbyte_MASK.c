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
typedef  int /*<<< orphan*/  u32 ;
struct mmc_command {int flags; int* resp; int /*<<< orphan*/  arg; int /*<<< orphan*/  opcode; } ;
struct mmc_card {int /*<<< orphan*/  host; } ;
typedef  int /*<<< orphan*/  io_cmd ;

/* Variables and functions */
 int MMC_CMD_AC ; 
 int MMC_RSP_R5 ; 
 int /*<<< orphan*/  SD_IO_RW_DIRECT ; 
 int /*<<< orphan*/  FUNC0 (struct mmc_command*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct mmc_command*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mmc_card *card,
			     u32 address,
			     u8 *byte)
{
	struct mmc_command io_cmd;
	u32 arg;
	int err;

	FUNC0(&io_cmd, 0, sizeof(io_cmd));
	arg = FUNC2(0, 0, 0, address, 0);
	io_cmd.opcode = SD_IO_RW_DIRECT;
	io_cmd.arg = arg;
	io_cmd.flags = MMC_RSP_R5 | MMC_CMD_AC;

	err = FUNC1(card->host, &io_cmd, 0);
	if ((!err) && (byte))
		*byte =  io_cmd.resp[0] & 0xFF;
	return err;
}