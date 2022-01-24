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
 int FUNC0 (struct broadsheetfb_par*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct broadsheetfb_par*,int,int) ; 

__attribute__((used)) static int FUNC2(struct broadsheetfb_par *par,
						int mode)
{
	int err;

	FUNC1(par, 0x0208, 1);
	if (mode)
		err = FUNC0(par, 0x06);
	else
		err = FUNC0(par, 0x04);

	FUNC1(par, 0x0208, 0);
	return err;
}