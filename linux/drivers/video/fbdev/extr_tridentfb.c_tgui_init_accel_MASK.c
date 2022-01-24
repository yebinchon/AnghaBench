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
struct tridentfb_par {scalar_t__ io_virt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tridentfb_par*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct tridentfb_par *par, int pitch, int bpp)
{
	unsigned char x = bpp == 24 ? 3 : (bpp >> 4);

	/* disable clipping */
	FUNC2(par, 0x2148, 0);
	FUNC2(par, 0x214C, FUNC1(4095, 2047));

	switch ((pitch * bpp) / 8) {
	case 8192:
	case 512:
		x |= 0x00;
		break;
	case 1024:
		x |= 0x04;
		break;
	case 2048:
		x |= 0x08;
		break;
	case 4096:
		x |= 0x0C;
		break;
	}

	FUNC0(x, par->io_virt + 0x2122);
}