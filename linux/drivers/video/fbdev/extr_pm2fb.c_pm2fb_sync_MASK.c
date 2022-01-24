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
struct pm2fb_par {int dummy; } ;
struct fb_info {struct pm2fb_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  PM2R_OUT_FIFO ; 
 int /*<<< orphan*/  PM2R_OUT_FIFO_WORDS ; 
 int /*<<< orphan*/  PM2R_SYNC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pm2fb_par*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (struct pm2fb_par*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pm2fb_par*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct fb_info *info)
{
	struct pm2fb_par *par = info->par;

	FUNC1(par, 1);
	FUNC5(par, PM2R_SYNC, 0);
	FUNC3();
	do {
		while (FUNC4(par, PM2R_OUT_FIFO_WORDS) == 0)
			FUNC2();
	} while (FUNC4(par, PM2R_OUT_FIFO) != FUNC0(PM2R_SYNC));

	return 0;
}