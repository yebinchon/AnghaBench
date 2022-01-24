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
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ DEBUG ; 
 int WD_HRTBT ; 
 int WD_REVC_HRBT ; 
 scalar_t__ debug ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int* pcwd_ioports ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,char*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, unsigned int id)
{
	int base_addr = pcwd_ioports[id];
	int port0, last_port0;	/* Reg 0, in case it's REV A */
	int port1, last_port1;	/* Register 1 for REV C cards */
	int i;
	int retval;

	if (debug >= DEBUG)
		FUNC2("pcwd_isa_match id=%d\n", id);

	if (!FUNC5(base_addr, 4, "PCWD")) {
		FUNC3("Port 0x%04x unavailable\n", base_addr);
		return 0;
	}

	retval = 0;

	port0 = FUNC0(base_addr);	/* For REV A boards */
	port1 = FUNC0(base_addr + 1);	/* For REV C boards */
	if (port0 != 0xff || port1 != 0xff) {
		/* Not an 'ff' from a floating bus, so must be a card! */
		for (i = 0; i < 4; ++i) {

			FUNC1(500);

			last_port0 = port0;
			last_port1 = port1;

			port0 = FUNC0(base_addr);
			port1 = FUNC0(base_addr + 1);

			/* Has either hearbeat bit changed?  */
			if ((port0 ^ last_port0) & WD_HRTBT ||
			    (port1 ^ last_port1) & WD_REVC_HRBT) {
				retval = 1;
				break;
			}
		}
	}
	FUNC4(base_addr, 4);

	return retval;
}