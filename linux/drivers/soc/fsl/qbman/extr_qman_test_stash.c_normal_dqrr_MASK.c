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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct hp_handler*,int /*<<< orphan*/ *) ; 
 int qman_cb_dqrr_consume ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum qman_cb_dqrr_result FUNC4(struct qman_portal *portal,
					    struct qman_fq *fq,
					    const struct qm_dqrr_entry *dqrr)
{
	struct hp_handler *handler = (struct hp_handler *)fq;

	if (FUNC2(handler, &dqrr->fd)) {
		FUNC0(1);
		goto skip;
	}
	if (FUNC3(&handler->tx, &dqrr->fd)) {
		FUNC1("qman_enqueue() failed");
		FUNC0(1);
	}
skip:
	return qman_cb_dqrr_consume;
}