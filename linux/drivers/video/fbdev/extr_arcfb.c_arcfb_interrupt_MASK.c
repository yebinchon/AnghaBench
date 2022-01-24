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
struct fb_info {struct arcfb_par* par; } ;
struct arcfb_par {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  KS_CLRINT ; 
 unsigned char KS_INTACK ; 
 int /*<<< orphan*/  arcfb_waitq ; 
 unsigned char FUNC0 (struct arcfb_par*) ; 
 int /*<<< orphan*/  FUNC1 (struct arcfb_par*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC6(int vec, void *dev_instance)
{
	struct fb_info *info = dev_instance;
	unsigned char ctl2status;
	struct arcfb_par *par = info->par;

	ctl2status = FUNC0(par);

	if (!(ctl2status & KS_INTACK)) /* not arc generated interrupt */
		return IRQ_NONE;

	FUNC1(par, KS_CLRINT);

	FUNC2(&par->lock);
        if (FUNC4(&arcfb_waitq)) {
                FUNC5(&arcfb_waitq);
        }
	FUNC3(&par->lock);

	return IRQ_HANDLED;
}