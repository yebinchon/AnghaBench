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
struct most_channel {scalar_t__ is_poisoned; } ;
struct mbo {scalar_t__ status; struct most_channel* context; } ;

/* Variables and functions */
 scalar_t__ MBO_E_CLOSE ; 
 scalar_t__ MBO_E_INVAL ; 
 int /*<<< orphan*/  FUNC0 (struct mbo*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbo*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct mbo *mbo)
{
	struct most_channel *c;

	c = mbo->context;
	if (mbo->status == MBO_E_INVAL)
		FUNC1("WARN: Tx MBO status: invalid\n");
	if (FUNC3(c->is_poisoned || (mbo->status == MBO_E_CLOSE)))
		FUNC2(mbo);
	else
		FUNC0(mbo);
}