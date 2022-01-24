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
typedef  int /*<<< orphan*/  u16 ;
struct broadsheetfb_par {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct broadsheetfb_par*) ; 
 int FUNC1 (struct broadsheetfb_par*) ; 
 int FUNC2 (struct broadsheetfb_par*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct broadsheetfb_par*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct broadsheetfb_par*,int,int) ; 

__attribute__((used)) static int FUNC5(struct broadsheetfb_par *par,
					u16 *initial_sfmcd, int *flash_type)

{
	int err;

	err = FUNC0(par);
	if (err)
		return err;

	FUNC4(par, 0x0106, 0x0203);

	err = FUNC1(par);
	if (err)
		return err;

	err = FUNC2(par, initial_sfmcd);
	if (err)
		return err;

	return FUNC3(par, flash_type);
}