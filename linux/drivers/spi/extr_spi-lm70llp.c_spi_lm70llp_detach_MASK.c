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
struct TYPE_2__ {int /*<<< orphan*/  master; } ;
struct spi_lm70llp {TYPE_1__ bitbang; int /*<<< orphan*/  pd; struct parport* port; } ;
struct parport {int dummy; } ;

/* Variables and functions */
 struct spi_lm70llp* lm70llp ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct parport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct parport *p)
{
	struct spi_lm70llp		*pp;

	if (!lm70llp || lm70llp->port != p)
		return;

	pp = lm70llp;
	FUNC3(&pp->bitbang);

	/* power down */
	FUNC2(pp->port, 0);

	FUNC0(pp->pd);
	FUNC1(pp->pd);

	FUNC4(pp->bitbang.master);

	lm70llp = NULL;
}