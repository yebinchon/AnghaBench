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
typedef  int /*<<< orphan*/  u8 ;
struct wd719x {int dummy; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  WD719X_AMR_CMD_PARAM ; 
 int /*<<< orphan*/  WD719X_AMR_CMD_PARAM_2 ; 
 int /*<<< orphan*/  WD719X_AMR_CMD_PARAM_3 ; 
 int /*<<< orphan*/  WD719X_AMR_COMMAND ; 
 int /*<<< orphan*/  WD719X_AMR_INT_STATUS ; 
 int /*<<< orphan*/  WD719X_AMR_SCB_IN ; 
 int /*<<< orphan*/  WD719X_CMD_ABORT ; 
 int /*<<< orphan*/  WD719X_CMD_ABORT_TAG ; 
 int /*<<< orphan*/  WD719X_CMD_BUSRESET ; 
 int /*<<< orphan*/  WD719X_CMD_READ_FIRMVER ; 
 int /*<<< orphan*/  WD719X_CMD_RESET ; 
 int /*<<< orphan*/  WD719X_DISABLE_INT ; 
 int /*<<< orphan*/  WD719X_INT_NONE ; 
 int FUNC0 (struct wd719x*,int) ; 
 scalar_t__ FUNC1 (struct wd719x*) ; 
 int /*<<< orphan*/  FUNC2 (struct wd719x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wd719x*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct wd719x *wd, u8 opcode, u8 dev, u8 lun,
			     u8 tag, dma_addr_t data, int timeout)
{
	int ret = 0;

	/* clear interrupt status register (allow command register to clear) */
	FUNC2(wd, WD719X_AMR_INT_STATUS, WD719X_INT_NONE);

	/* Wait for the Command register to become free */
	if (FUNC1(wd))
		return -ETIMEDOUT;

	/* disable interrupts except for RESET/ABORT (it breaks them) */
	if (opcode != WD719X_CMD_BUSRESET && opcode != WD719X_CMD_ABORT &&
	    opcode != WD719X_CMD_ABORT_TAG && opcode != WD719X_CMD_RESET)
		dev |= WD719X_DISABLE_INT;
	FUNC2(wd, WD719X_AMR_CMD_PARAM, dev);
	FUNC2(wd, WD719X_AMR_CMD_PARAM_2, lun);
	FUNC2(wd, WD719X_AMR_CMD_PARAM_3, tag);
	if (data)
		FUNC3(wd, WD719X_AMR_SCB_IN, data);

	/* clear interrupt status register again */
	FUNC2(wd, WD719X_AMR_INT_STATUS, WD719X_INT_NONE);

	/* Now, write the command */
	FUNC2(wd, WD719X_AMR_COMMAND, opcode);

	if (timeout)	/* wait for the command to complete */
		ret = FUNC0(wd, timeout);

	/* clear interrupt status register (clean up) */
	if (opcode != WD719X_CMD_READ_FIRMVER)
		FUNC2(wd, WD719X_AMR_INT_STATUS, WD719X_INT_NONE);

	return ret;
}