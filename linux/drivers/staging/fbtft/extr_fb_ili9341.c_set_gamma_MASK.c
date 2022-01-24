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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int num_curves; } ;
struct fbtft_par {TYPE_1__ gamma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fbtft_par*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct fbtft_par *par, u32 *curves)
{
	int i;

	for (i = 0; i < par->gamma.num_curves; i++)
		FUNC1(par, 0xE0 + i,
			  FUNC0(i, 0), FUNC0(i, 1), FUNC0(i, 2),
			  FUNC0(i, 3), FUNC0(i, 4), FUNC0(i, 5),
			  FUNC0(i, 6), FUNC0(i, 7), FUNC0(i, 8),
			  FUNC0(i, 9), FUNC0(i, 10), FUNC0(i, 11),
			  FUNC0(i, 12), FUNC0(i, 13), FUNC0(i, 14));

	return 0;
}