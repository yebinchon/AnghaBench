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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct lpc32xx_udc {int /*<<< orphan*/  udp_baseaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct lpc32xx_udc *udc, u8 *data, u32 bytes)
{
	int n, i, bl;
	u16 *p16;
	u32 *p32, tmp, cbytes;

	/* Use optimal data transfer method based on source address and size */
	switch (((uintptr_t) data) & 0x3) {
	case 0: /* 32-bit aligned */
		p32 = (u32 *) data;
		cbytes = (bytes & ~0x3);

		/* Copy 32-bit aligned data first */
		for (n = 0; n < cbytes; n += 4)
			FUNC1(*p32++, FUNC0(udc->udp_baseaddr));

		/* Handle any remaining bytes */
		bl = bytes - cbytes;
		if (bl) {
			tmp = 0;
			for (n = 0; n < bl; n++)
				tmp |= data[cbytes + n] << (n * 8);

			FUNC1(tmp, FUNC0(udc->udp_baseaddr));
		}
		break;

	case 1: /* 8-bit aligned */
	case 3:
		/* Each byte has to be handled independently */
		for (n = 0; n < bytes; n += 4) {
			bl = bytes - n;
			if (bl > 4)
				bl = 4;

			tmp = 0;
			for (i = 0; i < bl; i++)
				tmp |= data[n + i] << (i * 8);

			FUNC1(tmp, FUNC0(udc->udp_baseaddr));
		}
		break;

	case 2: /* 16-bit aligned */
		p16 = (u16 *) data;
		cbytes = (bytes & ~0x3);

		/* Copy 32-bit aligned data first */
		for (n = 0; n < cbytes; n += 4) {
			tmp = *p16++ & 0xFFFF;
			tmp |= (*p16++ & 0xFFFF) << 16;
			FUNC1(tmp, FUNC0(udc->udp_baseaddr));
		}

		/* Handle any remaining bytes */
		bl = bytes - cbytes;
		if (bl) {
			tmp = 0;
			for (n = 0; n < bl; n++)
				tmp |= data[cbytes + n] << (n * 8);

			FUNC1(tmp, FUNC0(udc->udp_baseaddr));
		}
		break;
	}
}