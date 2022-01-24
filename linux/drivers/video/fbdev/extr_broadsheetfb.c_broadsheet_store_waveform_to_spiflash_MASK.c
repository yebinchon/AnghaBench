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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct broadsheetfb_par {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct broadsheetfb_par*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct broadsheetfb_par*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct broadsheetfb_par*,int,int /*<<< orphan*/  const*,size_t,int) ; 

__attribute__((used)) static int FUNC3(struct broadsheetfb_par *par,
						const u8 *wfm, size_t wfm_size)
{
	int err = 0;
	u16 initial_sfmcd = 0;
	int flash_type = 0;

	err = FUNC0(par, &initial_sfmcd, &flash_type);
	if (err)
		goto failout;

	err = FUNC2(par, 0x886, wfm, wfm_size, flash_type);

failout:
	FUNC1(par, 0x0204, initial_sfmcd);
	return err;
}