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
struct sh_pfc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  r8a7794_tdsel ; 
 int /*<<< orphan*/  FUNC0 (struct sh_pfc*,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct sh_pfc *pfc)
{
	/* Initialize TDSEL on old revisions */
	if (FUNC1(r8a7794_tdsel))
		FUNC0(pfc, 0xe6060068, 0x55555500);

	return 0;
}