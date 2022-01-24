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
struct TYPE_2__ {int /*<<< orphan*/  io_lock; scalar_t__ io_addr; } ;

/* Variables and functions */
 scalar_t__ DEBUG ; 
 int PCI_COMMAND_TIMEOUT ; 
 int WD_PCI_WRSP ; 
 scalar_t__ debug ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 TYPE_1__ pcipcwd_private ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(int cmd, int *msb, int *lsb)
{
	int got_response, count;

	if (debug >= DEBUG)
		FUNC3("sending following data cmd=0x%02x msb=0x%02x lsb=0x%02x\n",
			 cmd, *msb, *lsb);

	FUNC4(&pcipcwd_private.io_lock);
	/* If a command requires data it should be written first.
	 * Data for commands with 8 bits of data should be written to port 4.
	 * Commands with 16 bits of data, should be written as LSB to port 4
	 * and MSB to port 5.
	 * After the required data has been written then write the command to
	 * port 6. */
	FUNC2(*lsb, pcipcwd_private.io_addr + 4);
	FUNC2(*msb, pcipcwd_private.io_addr + 5);
	FUNC2(cmd, pcipcwd_private.io_addr + 6);

	/* wait till the pci card processed the command, signaled by
	 * the WRSP bit in port 2 and give it a max. timeout of
	 * PCI_COMMAND_TIMEOUT to process */
	got_response = FUNC0(pcipcwd_private.io_addr + 2) & WD_PCI_WRSP;
	for (count = 0; (count < PCI_COMMAND_TIMEOUT) && (!got_response);
								count++) {
		FUNC1(1);
		got_response = FUNC0(pcipcwd_private.io_addr + 2) & WD_PCI_WRSP;
	}

	if (debug >= DEBUG) {
		if (got_response) {
			FUNC3("time to process command was: %d ms\n",
				 count);
		} else {
			FUNC3("card did not respond on command!\n");
		}
	}

	if (got_response) {
		/* read back response */
		*lsb = FUNC0(pcipcwd_private.io_addr + 4);
		*msb = FUNC0(pcipcwd_private.io_addr + 5);

		/* clear WRSP bit */
		FUNC0(pcipcwd_private.io_addr + 6);

		if (debug >= DEBUG)
			FUNC3("received following data for cmd=0x%02x: msb=0x%02x lsb=0x%02x\n",
				 cmd, *msb, *lsb);
	}

	FUNC5(&pcipcwd_private.io_lock);

	return got_response;
}