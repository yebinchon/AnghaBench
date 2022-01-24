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
typedef  int /*<<< orphan*/  u32 ;
struct ci_hdrc {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  OP_ULPI_VIEWPORT ; 
 int /*<<< orphan*/  FUNC0 (struct ci_hdrc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct ci_hdrc *ci, u32 mask)
{
	unsigned long usec = 10000;

	while (usec--) {
		if (!FUNC0(ci, OP_ULPI_VIEWPORT, mask))
			return 0;

		FUNC1(1);
	}

	return -ETIMEDOUT;
}