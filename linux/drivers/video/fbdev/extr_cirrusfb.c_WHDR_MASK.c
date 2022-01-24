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
struct cirrusfb_info {scalar_t__ btype; } ;

/* Variables and functions */
 scalar_t__ BT_PICASSO ; 
 unsigned char FUNC0 (struct cirrusfb_info const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VGA_PEL_IW ; 
 int /*<<< orphan*/  VGA_PEL_MSK ; 
 int /*<<< orphan*/  FUNC1 (struct cirrusfb_info const*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct cirrusfb_info const*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(const struct cirrusfb_info *cinfo, unsigned char val)
{
	unsigned char dummy;

	if (FUNC2(cinfo))
		return;
	if (cinfo->btype == BT_PICASSO) {
		/* Klaus' hint for correct access to HDR on some boards */
		/* first write 0 to pixel mask (3c6) */
		FUNC1(cinfo, VGA_PEL_MSK, 0x00);
		FUNC3(200);
		/* next read dummy from pixel address (3c8) */
		dummy = FUNC0(cinfo, VGA_PEL_IW);
		FUNC3(200);
	}
	/* now do the usual stuff to access the HDR */

	dummy = FUNC0(cinfo, VGA_PEL_MSK);
	FUNC3(200);
	dummy = FUNC0(cinfo, VGA_PEL_MSK);
	FUNC3(200);
	dummy = FUNC0(cinfo, VGA_PEL_MSK);
	FUNC3(200);
	dummy = FUNC0(cinfo, VGA_PEL_MSK);
	FUNC3(200);

	FUNC1(cinfo, VGA_PEL_MSK, val);
	FUNC3(200);

	if (cinfo->btype == BT_PICASSO) {
		/* now first reset HDR access counter */
		dummy = FUNC0(cinfo, VGA_PEL_IW);
		FUNC3(200);

		/* and at the end, restore the mask value */
		/* ## is this mask always 0xff? */
		FUNC1(cinfo, VGA_PEL_MSK, 0xff);
		FUNC3(200);
	}
}