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
struct sbp_session {scalar_t__ generation; int node_id; int reconnect_hold; int /*<<< orphan*/  lock; scalar_t__ reconnect_expires; int /*<<< orphan*/  guid; TYPE_1__* card; } ;
struct TYPE_2__ {scalar_t__ generation; int /*<<< orphan*/  lock; int /*<<< orphan*/ * local_node; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct sbp_session *sess)
{
	bool card_valid = false;

	FUNC3(&sess->lock);

	if (sess->card) {
		FUNC4(&sess->card->lock);
		card_valid = (sess->card->local_node != NULL);
		FUNC6(&sess->card->lock);

		if (!card_valid) {
			FUNC0(sess->card);
			sess->card = NULL;
		}
	}

	if (!card_valid || (sess->generation != sess->card->generation)) {
		FUNC2("Waiting for reconnect from node: %016llx\n",
				sess->guid);

		sess->node_id = -1;
		sess->reconnect_expires = FUNC1() +
			((sess->reconnect_hold + 1) * HZ);
	}

	FUNC5(&sess->lock);
}