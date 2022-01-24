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
struct broadsheetfb_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BS_CMD_INIT_SYS_RUN ; 
 int /*<<< orphan*/  FUNC0 (struct broadsheetfb_par*) ; 
 int /*<<< orphan*/  FUNC1 (struct broadsheetfb_par*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct broadsheetfb_par *par)
{
	FUNC1(par, BS_CMD_INIT_SYS_RUN);
	/* the controller needs a second */
	FUNC2(1000);
	FUNC0(par);
}