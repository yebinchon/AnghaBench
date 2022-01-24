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
struct qman_portal {int dummy; } ;
struct qman_fq {int dummy; } ;
struct qm_dqrr_entry {int /*<<< orphan*/  fd; } ;
struct hp_handler {int /*<<< orphan*/  tx; } ;
typedef  enum qman_cb_dqrr_result { ____Placeholder_qman_cb_dqrr_result } qman_cb_dqrr_result ;

/* Variables and functions */
 scalar_t__ HP_LOOPS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ loop_counter ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct hp_handler*,int /*<<< orphan*/ *) ; 
 int qman_cb_dqrr_consume ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  queue ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum qman_cb_dqrr_result FUNC6(struct qman_portal *portal,
					     struct qman_fq *fq,
					     const struct qm_dqrr_entry *dqrr)
{
	struct hp_handler *handler = (struct hp_handler *)fq;

	FUNC3(handler, &dqrr->fd);
	if (++loop_counter < HP_LOOPS) {
		if (FUNC4(&handler->tx, &dqrr->fd)) {
			FUNC1("qman_enqueue() failed");
			FUNC0(1);
			goto skip;
		}
	} else {
		FUNC2("Received final (%dth) frame\n", loop_counter);
		FUNC5(&queue);
	}
skip:
	return qman_cb_dqrr_consume;
}