#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_3__* comp; scalar_t__ refs; } ;
struct TYPE_6__ {TYPE_1__* comp; scalar_t__ refs; } ;
struct most_channel {int is_starving; TYPE_4__ pipe1; TYPE_2__ pipe0; int /*<<< orphan*/  mbo_nq_level; scalar_t__ is_poisoned; } ;
struct mbo {scalar_t__ status; struct most_channel* context; } ;
struct TYPE_7__ {scalar_t__ (* rx_completion ) (struct mbo*) ;} ;
struct TYPE_5__ {scalar_t__ (* rx_completion ) (struct mbo*) ;} ;

/* Variables and functions */
 scalar_t__ MBO_E_CLOSE ; 
 scalar_t__ MBO_E_INVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mbo*) ; 
 int /*<<< orphan*/  FUNC3 (struct mbo*) ; 
 scalar_t__ FUNC4 (struct mbo*) ; 
 scalar_t__ FUNC5 (struct mbo*) ; 
 int /*<<< orphan*/  FUNC6 (struct mbo*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct mbo *mbo)
{
	struct most_channel *c = mbo->context;

	if (FUNC7(c->is_poisoned || (mbo->status == MBO_E_CLOSE))) {
		FUNC6(mbo);
		return;
	}

	if (mbo->status == MBO_E_INVAL) {
		FUNC3(mbo);
		FUNC0(&c->mbo_nq_level);
		return;
	}

	if (FUNC1(1, &c->mbo_nq_level))
		c->is_starving = 1;

	if (c->pipe0.refs && c->pipe0.comp->rx_completion &&
	    c->pipe0.comp->rx_completion(mbo) == 0)
		return;

	if (c->pipe1.refs && c->pipe1.comp->rx_completion &&
	    c->pipe1.comp->rx_completion(mbo) == 0)
		return;

	FUNC2(mbo);
}