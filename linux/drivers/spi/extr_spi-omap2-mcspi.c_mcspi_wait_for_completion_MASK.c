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
struct omap2_mcspi {scalar_t__ slave_aborted; int /*<<< orphan*/  master; } ;
struct completion {int dummy; } ;

/* Variables and functions */
 int EINTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct completion*) ; 
 scalar_t__ FUNC2 (struct completion*) ; 

__attribute__((used)) static int FUNC3(struct  omap2_mcspi *mcspi,
				     struct completion *x)
{
	if (FUNC0(mcspi->master)) {
		if (FUNC2(x) ||
		    mcspi->slave_aborted)
			return -EINTR;
	} else {
		FUNC1(x);
	}

	return 0;
}