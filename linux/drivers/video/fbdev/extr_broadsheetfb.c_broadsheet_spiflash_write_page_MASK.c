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
 int BS_SPIFLASH_PAGE_SIZE ; 
 int FUNC0 (struct broadsheetfb_par*,int,int) ; 
 int FUNC1 (struct broadsheetfb_par*,int) ; 
 int FUNC2 (struct broadsheetfb_par*,char const) ; 
 int /*<<< orphan*/  FUNC3 (struct broadsheetfb_par*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct broadsheetfb_par*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct broadsheetfb_par *par,
						int addr, const char *data)
{
	int err;
	int i;

	FUNC3(par, 1);

	err = FUNC0(par, 0x02, addr);
	if (err)
		goto failout;

	for (i = 0; i < BS_SPIFLASH_PAGE_SIZE; i++) {
		err = FUNC2(par, data[i]);
		if (err)
			goto failout;
	}

	FUNC4(par, 0x0208, 0);

	err = FUNC1(par, 100);

failout:
	return err;
}