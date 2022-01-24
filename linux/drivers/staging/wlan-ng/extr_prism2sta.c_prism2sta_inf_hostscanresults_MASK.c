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
struct wlandevice {struct hfa384x* priv; } ;
struct hfa384x_inf_frame {int framelen; } ;
struct hfa384x {int scanflag; int /*<<< orphan*/  cmdq; int /*<<< orphan*/  scanresults; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hfa384x_inf_frame*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct wlandevice *wlandev,
					  struct hfa384x_inf_frame *inf)
{
	struct hfa384x *hw = wlandev->priv;
	int nbss;

	nbss = (inf->framelen - 3) / 32;
	FUNC2("Received %d hostscan results\n", nbss);

	if (nbss > 32)
		nbss = 32;

	FUNC0(hw->scanresults);

	hw->scanresults = FUNC1(inf, sizeof(*inf), GFP_ATOMIC);

	if (nbss == 0)
		nbss = -1;

	/* Notify/wake the sleeping caller. */
	hw->scanflag = nbss;
	FUNC3(&hw->cmdq);
}