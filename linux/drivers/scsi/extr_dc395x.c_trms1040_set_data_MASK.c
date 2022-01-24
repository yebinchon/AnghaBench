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

/* Variables and functions */
 int NVR_BITIN ; 
 int NVR_BITOUT ; 
 int NVR_CLOCK ; 
 int NVR_SELECT ; 
 unsigned long TRM_S1040_GEN_NVRAM ; 
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int,int) ; 

__attribute__((used)) static void FUNC4(unsigned long io_port, u8 addr, u8 byte)
{
	int i;
	u8 send_data;

	/* Send write command & address */
	FUNC3(io_port, 0x05, addr);

	/* Write data */
	for (i = 0; i < 8; i++, byte <<= 1) {
		send_data = NVR_SELECT;
		if (byte & 0x80)	/* Start from bit 7 */
			send_data |= NVR_BITOUT;

		FUNC1(send_data, io_port + TRM_S1040_GEN_NVRAM);
		FUNC2(io_port);
		FUNC1((send_data | NVR_CLOCK), io_port + TRM_S1040_GEN_NVRAM);
		FUNC2(io_port);
	}
	FUNC1(NVR_SELECT, io_port + TRM_S1040_GEN_NVRAM);
	FUNC2(io_port);

	/* Disable chip select */
	FUNC1(0, io_port + TRM_S1040_GEN_NVRAM);
	FUNC2(io_port);

	FUNC1(NVR_SELECT, io_port + TRM_S1040_GEN_NVRAM);
	FUNC2(io_port);

	/* Wait for write ready */
	while (1) {
		FUNC1((NVR_SELECT | NVR_CLOCK), io_port + TRM_S1040_GEN_NVRAM);
		FUNC2(io_port);

		FUNC1(NVR_SELECT, io_port + TRM_S1040_GEN_NVRAM);
		FUNC2(io_port);

		if (FUNC0(io_port + TRM_S1040_GEN_NVRAM) & NVR_BITIN)
			break;
	}

	/*  Disable chip select */
	FUNC1(0, io_port + TRM_S1040_GEN_NVRAM);
}