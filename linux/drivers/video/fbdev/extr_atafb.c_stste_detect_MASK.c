#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct atafb_par {int dummy; } ;
struct TYPE_4__ {int par_dt_reg; } ;
struct TYPE_3__ {int /*<<< orphan*/  ctrl; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMASND_CTRL_OFF ; 
 int /*<<< orphan*/  EXTD_SHIFTER ; 
 int /*<<< orphan*/  PCM_8BIT ; 
 int /*<<< orphan*/ * atafb_predefined ; 
 int mono_moni ; 
 TYPE_2__ st_mfp ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct atafb_par*) ; 
 int /*<<< orphan*/  FUNC2 (struct atafb_par*) ; 
 TYPE_1__ tt_dmasnd ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ use_hwscroll ; 

__attribute__((used)) static int FUNC4(void)
{
	struct atafb_par par;

	/* Determine the connected monitor: The DMA sound must be
	 * disabled before reading the MFP GPIP, because the Sound
	 * Done Signal and the Monochrome Detect are XORed together!
	 */
	if (FUNC0(PCM_8BIT)) {
		tt_dmasnd.ctrl = DMASND_CTRL_OFF;
		FUNC3(20);		/* wait a while for things to settle down */
	}
	mono_moni = (st_mfp.par_dt_reg & 0x80) == 0;

	FUNC2(&par);
	FUNC1(&atafb_predefined[0], &par);

	if (!FUNC0(EXTD_SHIFTER))
		use_hwscroll = 0;
	return 1;
}