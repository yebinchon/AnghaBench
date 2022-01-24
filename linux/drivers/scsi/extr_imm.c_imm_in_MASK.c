#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned short base; int mode; } ;
typedef  TYPE_1__ imm_struct ;

/* Variables and functions */
 int /*<<< orphan*/  DID_ERROR ; 
#define  IMM_EPP_16 132 
#define  IMM_EPP_32 131 
#define  IMM_EPP_8 130 
#define  IMM_NIBBLE 129 
#define  IMM_PS2 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned short) ; 
 int FUNC2 (unsigned short,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned short,char*,int) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (unsigned short) ; 
 int /*<<< orphan*/  FUNC11 (unsigned short,int) ; 

__attribute__((used)) static int FUNC12(imm_struct *dev, char *buffer, int len)
{
	unsigned short ppb = dev->base;
	int r = FUNC5(dev);

	/*
	 * Make sure that:
	 * a) the SCSI bus is BUSY (device still listening)
	 * b) the device is sending data
	 */
	if ((r & 0x18) != 0x18) {
		FUNC3(dev, DID_ERROR);
		return 0;
	}
	switch (dev->mode) {
	case IMM_NIBBLE:
		/* 4 bit input, with a loop */
		r = FUNC4(ppb, buffer, len);
		FUNC11(ppb, 0xc);
		break;

	case IMM_PS2:
		/* 8 bit input, with a loop */
		r = FUNC2(ppb, buffer, len);
		FUNC11(ppb, 0xc);
		break;

	case IMM_EPP_32:
	case IMM_EPP_16:
	case IMM_EPP_8:
		FUNC1(ppb);
		FUNC11(ppb, 0x24);
#ifdef CONFIG_SCSI_IZIP_EPP16
		if (!(((long) buffer | len) & 0x01))
			insw(ppb + 4, buffer, len >> 1);
#else
		if (!(((long) buffer | len) & 0x03))
			FUNC7(ppb + 4, buffer, len >> 2);
#endif
		else
			FUNC6(ppb + 4, buffer, len);
		FUNC11(ppb, 0x2c);
		r = !(FUNC10(ppb) & 0x01);
		FUNC11(ppb, 0x2c);
		FUNC0(dev);
		break;

	default:
		FUNC9("IMM: bug in imm_ins()\n");
		r = 0;
		break;
	}
	return r;
}