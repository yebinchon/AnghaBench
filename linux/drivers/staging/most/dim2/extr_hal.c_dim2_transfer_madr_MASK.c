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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {TYPE_1__* dim2; } ;
struct TYPE_3__ {int /*<<< orphan*/  MCTL; int /*<<< orphan*/  MADR; } ;

/* Variables and functions */
 TYPE_2__ g ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(u32 val)
{
	FUNC1(val, &g.dim2->MADR);

	/* wait for transfer completion */
	while ((FUNC0(&g.dim2->MCTL) & 1) != 1)
		continue;

	FUNC1(0, &g.dim2->MCTL);   /* clear transfer complete */
}