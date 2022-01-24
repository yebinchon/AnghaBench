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
struct matrox_fb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct matrox_fb_info*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC1 (struct matrox_fb_info*,unsigned int,unsigned int) ; 

__attribute__((used)) static inline unsigned int FUNC2(struct matrox_fb_info *minfo,
					       unsigned int pll,
					       unsigned int *mnparray,
					       unsigned int mnpcount)
{
	unsigned int found = 0;
	unsigned int idx;
	unsigned int mnpfound = mnparray[0];
		
	for (idx = 0; idx < mnpcount; idx++) {
		unsigned int sarray[3];
		unsigned int *sptr;
		{
			unsigned int mnp;
		
			sptr = sarray;
			mnp = mnparray[idx];
			if (mnp & 0x38) {
				*sptr++ = mnp - 8;
			}
			if ((mnp & 0x38) != 0x38) {
				*sptr++ = mnp + 8;
			}
			*sptr = mnp;
		}
		while (sptr >= sarray) {
			unsigned int mnp = *sptr--;
		
			if (FUNC1(minfo, mnp - 0x0300, pll) &&
			    FUNC1(minfo, mnp + 0x0300, pll) &&
			    FUNC1(minfo, mnp - 0x0200, pll) &&
			    FUNC1(minfo, mnp + 0x0200, pll) &&
			    FUNC1(minfo, mnp - 0x0100, pll) &&
			    FUNC1(minfo, mnp + 0x0100, pll)) {
				if (FUNC1(minfo, mnp, pll)) {
					return mnp;
				}
			} else if (!found && FUNC1(minfo, mnp, pll)) {
				mnpfound = mnp;
				found = 1;
			}
		}
	}
	FUNC0(minfo, mnpfound, pll);
	return mnpfound;
}