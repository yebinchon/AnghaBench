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
struct mon_bus {int /*<<< orphan*/  dent_s; int /*<<< orphan*/  dent_t; int /*<<< orphan*/  dent_u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(struct mon_bus *mbus)
{
	FUNC0(mbus->dent_u);
	FUNC0(mbus->dent_t);
	FUNC0(mbus->dent_s);
}