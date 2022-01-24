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
struct fb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HD64461_LCDCCR ; 
 unsigned short HD64461_LCDCCR_MOFF ; 
 unsigned short HD64461_LCDCCR_STBACK ; 
 unsigned short HD64461_LCDCCR_STREQ ; 
 int /*<<< orphan*/  HD64461_LDR1 ; 
 unsigned short HD64461_LDR1_DON ; 
 int /*<<< orphan*/  HD64461_STBCR ; 
 unsigned short HD64461_STBCR_SLCDST ; 
 unsigned short FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned short,int /*<<< orphan*/ ) ; 

int FUNC2(int blank_mode, struct fb_info *info)
{
	unsigned short v;

	if (blank_mode) {
		v = FUNC0(HD64461_LDR1);
		v &= ~HD64461_LDR1_DON;
		FUNC1(v, HD64461_LDR1);

		v = FUNC0(HD64461_LCDCCR);
		v |= HD64461_LCDCCR_MOFF;
		FUNC1(v, HD64461_LCDCCR);

		v = FUNC0(HD64461_STBCR);
		v |= HD64461_STBCR_SLCDST;
		FUNC1(v, HD64461_STBCR);
	} else {
		v = FUNC0(HD64461_STBCR);
		v &= ~HD64461_STBCR_SLCDST;
		FUNC1(v, HD64461_STBCR);

		v = FUNC0(HD64461_LCDCCR);
		v &= ~(HD64461_LCDCCR_MOFF | HD64461_LCDCCR_STREQ);
		FUNC1(v, HD64461_LCDCCR);

		do {
		    v = FUNC0(HD64461_LCDCCR);
		} while(v&HD64461_LCDCCR_STBACK);

		v = FUNC0(HD64461_LDR1);
		v |= HD64461_LDR1_DON;
		FUNC1(v, HD64461_LDR1);
	}
	return 0;
}