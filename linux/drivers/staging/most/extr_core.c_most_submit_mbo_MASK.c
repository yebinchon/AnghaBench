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
struct mbo {int /*<<< orphan*/  context; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mbo*) ; 

void FUNC2(struct mbo *mbo)
{
	if (FUNC0(!mbo || !mbo->context,
		      "bad mbo or missing channel reference\n"))
		return;

	FUNC1(mbo);
}