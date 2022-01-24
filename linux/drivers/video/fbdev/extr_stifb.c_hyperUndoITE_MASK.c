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
typedef  int /*<<< orphan*/  u32 ;
struct stifb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AddrLong ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BINovly ; 
 int /*<<< orphan*/  BitmapExtent08 ; 
 int /*<<< orphan*/  DataDynamic ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct stifb_info*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IndexedDcd ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MaskOtc ; 
 int /*<<< orphan*/  FUNC8 (struct stifb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct stifb_info*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct stifb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct stifb_info*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct stifb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct stifb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct stifb_info*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct stifb_info*) ; 
 int /*<<< orphan*/  Otc04 ; 
 int /*<<< orphan*/  Ots08 ; 
 int /*<<< orphan*/  REG_32 ; 
 int /*<<< orphan*/  RopSrc ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int,struct stifb_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC19(struct stifb_info *fb)
{
	int nFreeFifoSlots = 0;
	u32 fbAddr;

	FUNC11(fb);

	FUNC5(fb, nFreeFifoSlots, 1);
	FUNC18(0xffffffff, fb, REG_32);

	/* Write overlay transparency mask so only entry 255 is transparent */

	/* Hardware setup for full-depth write to "magic" location */
	FUNC5(fb, nFreeFifoSlots, 7);
	FUNC13(fb, 
		FUNC0(IndexedDcd, Otc04, Ots08, AddrLong,
		FUNC2(0), BINovly, FUNC1(0)));
	FUNC14(fb,
		FUNC6(RopSrc, FUNC7(0),
		BitmapExtent08, FUNC17(0),
		DataDynamic, MaskOtc, FUNC3(0), FUNC4(0)));

	/* Now prepare to write to the "magic" location */
	fbAddr = FUNC12(0, 1532, 0);
	FUNC8(fb, fbAddr);
	FUNC15(fb, 0xffffff);
	FUNC9(fb, 0xffffffff);

	/* Finally, write a zero to clear the mask */
	FUNC10(fb, 0);

	FUNC16(fb);
}