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

/* Variables and functions */
 int /*<<< orphan*/  CR13 ; 
 int /*<<< orphan*/  CR35 ; 
 int /*<<< orphan*/  CR65 ; 
 int /*<<< orphan*/  CR66 ; 
 int /*<<< orphan*/  CR67 ; 
 int IGA2 ; 
 int /*<<< orphan*/  VIACR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static void FUNC2(int iga_path, int hres, int bpp)
{
	unsigned char cr13, cr35, cr65, cr66, cr67;
	unsigned long dwScreenPitch = 0;
	unsigned long dwPitch;

	dwPitch = hres * (bpp >> 3);
	if (dwPitch & 0x1F) {
		dwScreenPitch = ((dwPitch + 31) & ~31) >> 3;
		if (iga_path == IGA2) {
			if (bpp > 8) {
				cr66 = (unsigned char)(dwScreenPitch & 0xFF);
				FUNC1(CR66, VIACR, cr66);
				cr67 = FUNC0(VIACR, CR67) & 0xFC;
				cr67 |=
				    (unsigned
				     char)((dwScreenPitch & 0x300) >> 8);
				FUNC1(CR67, VIACR, cr67);
			}

			/* Fetch Count */
			cr67 = FUNC0(VIACR, CR67) & 0xF3;
			cr67 |= (unsigned char)((dwScreenPitch & 0x600) >> 7);
			FUNC1(CR67, VIACR, cr67);
			cr65 = (unsigned char)((dwScreenPitch >> 1) & 0xFF);
			cr65 += 2;
			FUNC1(CR65, VIACR, cr65);
		} else {
			if (bpp > 8) {
				cr13 = (unsigned char)(dwScreenPitch & 0xFF);
				FUNC1(CR13, VIACR, cr13);
				cr35 = FUNC0(VIACR, CR35) & 0x1F;
				cr35 |=
				    (unsigned
				     char)((dwScreenPitch & 0x700) >> 3);
				FUNC1(CR35, VIACR, cr35);
			}
		}
	}
}