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
typedef  int u8 ;
struct broadsheetfb_par {TYPE_1__* info; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int FUNC0 (struct broadsheetfb_par*,int*) ; 
 int FUNC1 (struct broadsheetfb_par*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct broadsheetfb_par*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct broadsheetfb_par *par,
								int timeout)
{
	u8 tmp;
	int err;

	do {
		FUNC2(par, 0x0208, 1);

		err = FUNC1(par, 0x05);
		if (err)
			goto failout;

		err = FUNC0(par, &tmp);
		if (err)
			goto failout;

		FUNC2(par, 0x0208, 0);

		if (!(tmp & 0x1))
			return 0;

		FUNC4(5);
	} while (timeout--);

	FUNC3(par->info->device, "Timed out waiting for spiflash status\n");
	return -ETIMEDOUT;

failout:
	FUNC2(par, 0x0208, 0);
	return err;
}