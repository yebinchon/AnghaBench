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
 int EINVAL ; 
 int FUNC0 (struct broadsheetfb_par*,int,int) ; 
 int FUNC1 (struct broadsheetfb_par*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct broadsheetfb_par*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct broadsheetfb_par *par,
						int *flash_type)
{
	int err = 0;
	u8 sig;

	err = FUNC0(par, 0xAB, 0x00000000);
	if (err)
		goto failout;

	err = FUNC1(par, &sig);
	if (err)
		goto failout;

	if ((sig != 0x10) && (sig != 0x11)) {
		FUNC3(par->info->device, "Unexpected flash type\n");
		err = -EINVAL;
		goto failout;
	}

	*flash_type = sig;

failout:
	FUNC2(par, 0x0208, 0);
	return err;
}