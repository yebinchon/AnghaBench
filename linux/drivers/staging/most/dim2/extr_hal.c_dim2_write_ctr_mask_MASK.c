#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_4__ {TYPE_1__* dim2; } ;
struct TYPE_3__ {int /*<<< orphan*/  MDWE3; int /*<<< orphan*/  MDWE2; int /*<<< orphan*/  MDWE1; int /*<<< orphan*/  MDWE0; int /*<<< orphan*/  MDAT3; int /*<<< orphan*/  MDAT2; int /*<<< orphan*/  MDAT1; int /*<<< orphan*/  MDAT0; int /*<<< orphan*/  MCTL; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_2__ g ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__ const,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(u32 ctr_addr, const u32 *mask, const u32 *value)
{
	enum { MADR_WNR_BIT = 31 };

	FUNC2(0, &g.dim2->MCTL);   /* clear transfer complete */

	if (mask[0] != 0)
		FUNC2(value[0], &g.dim2->MDAT0);
	if (mask[1] != 0)
		FUNC2(value[1], &g.dim2->MDAT1);
	if (mask[2] != 0)
		FUNC2(value[2], &g.dim2->MDAT2);
	if (mask[3] != 0)
		FUNC2(value[3], &g.dim2->MDAT3);

	FUNC2(mask[0], &g.dim2->MDWE0);
	FUNC2(mask[1], &g.dim2->MDWE1);
	FUNC2(mask[2], &g.dim2->MDWE2);
	FUNC2(mask[3], &g.dim2->MDWE3);

	FUNC1(FUNC0(MADR_WNR_BIT) | ctr_addr);
}