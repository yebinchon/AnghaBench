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
typedef  int u32 ;
typedef  scalar_t__ u16 ;

/* Variables and functions */
 int /*<<< orphan*/  HD64461_BBTDHR ; 
 int /*<<< orphan*/  HD64461_BBTDSARH ; 
 int /*<<< orphan*/  HD64461_BBTDSARL ; 
 int /*<<< orphan*/  HD64461_BBTDWR ; 
 int /*<<< orphan*/  HD64461_BBTMARH ; 
 int /*<<< orphan*/  HD64461_BBTMARL ; 
 int /*<<< orphan*/  HD64461_BBTMDR ; 
 int /*<<< orphan*/  HD64461_BBTROPR ; 
 int /*<<< orphan*/  HD64461_BBTSSARH ; 
 int /*<<< orphan*/  HD64461_BBTSSARL ; 
 scalar_t__ WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static inline void FUNC2(int truecolor, u16 sx, u16 sy, u16 dx,
				      u16 dy, u16 width, u16 height, u16 rop,
				      u32 mask_addr)
{
	u32 saddr, daddr;
	u32 maddr = 0;

	height--;
	width--;
	FUNC0(rop, HD64461_BBTROPR);
	if ((sy < dy) || ((sy == dy) && (sx <= dx))) {
		saddr = WIDTH * (sy + height) + sx + width;
		daddr = WIDTH * (dy + height) + dx + width;
		if (mask_addr) {
			if (truecolor)
				maddr = ((width >> 3) + 1) * (height + 1) - 1;
			else
				maddr =
				    (((width >> 4) + 1) * (height + 1) - 1) * 2;

			FUNC0((1 << 5) | 1, HD64461_BBTMDR);
		} else
			FUNC0(1, HD64461_BBTMDR);
	} else {
		saddr = WIDTH * sy + sx;
		daddr = WIDTH * dy + dx;
		if (mask_addr) {
			FUNC0((1 << 5), HD64461_BBTMDR);
		} else {
			FUNC0(0, HD64461_BBTMDR);
		}
	}
	if (truecolor) {
		saddr <<= 1;
		daddr <<= 1;
	}
	FUNC0(width, HD64461_BBTDWR);
	FUNC0(height, HD64461_BBTDHR);
	FUNC0(saddr & 0xffff, HD64461_BBTSSARL);
	FUNC0(saddr >> 16, HD64461_BBTSSARH);
	FUNC0(daddr & 0xffff, HD64461_BBTDSARL);
	FUNC0(daddr >> 16, HD64461_BBTDSARH);
	if (mask_addr) {
		maddr += mask_addr;
		FUNC0(maddr & 0xffff, HD64461_BBTMARL);
		FUNC0(maddr >> 16, HD64461_BBTMARH);
	}
	FUNC1(truecolor);
}