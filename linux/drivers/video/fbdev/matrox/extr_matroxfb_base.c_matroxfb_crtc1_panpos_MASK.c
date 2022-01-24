#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int panpos; } ;
struct matrox_fb_info {TYPE_1__ crtc1; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_EXTVGA_INDEX ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC5(struct matrox_fb_info *minfo)
{
	if (minfo->crtc1.panpos >= 0) {
		unsigned long flags;
		int panpos;

		FUNC0(flags);
		panpos = minfo->crtc1.panpos;
		if (panpos >= 0) {
			unsigned int extvga_reg;

			minfo->crtc1.panpos = -1; /* No update pending anymore */
			extvga_reg = FUNC2(M_EXTVGA_INDEX);
			FUNC4(M_EXTVGA_INDEX, 0x00, panpos);
			if (extvga_reg != 0x00) {
				FUNC3(M_EXTVGA_INDEX, extvga_reg);
			}
		}
		FUNC1(flags);
	}
}