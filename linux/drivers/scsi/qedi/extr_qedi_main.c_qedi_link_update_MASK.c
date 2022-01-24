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
struct qedi_ctx {int /*<<< orphan*/  link_state; int /*<<< orphan*/  dbg_ctx; } ;
struct qed_link_output {scalar_t__ link_up; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  QEDI_LINK_DOWN ; 
 int /*<<< orphan*/  QEDI_LINK_UP ; 
 int /*<<< orphan*/  QEDI_LOG_INFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *dev, struct qed_link_output *link)
{
	struct qedi_ctx *qedi = (struct qedi_ctx *)dev;

	if (link->link_up) {
		FUNC0(&qedi->dbg_ctx, QEDI_LOG_INFO, "Link Up event.\n");
		FUNC1(&qedi->link_state, QEDI_LINK_UP);
	} else {
		FUNC0(&qedi->dbg_ctx, QEDI_LOG_INFO,
			  "Link Down event.\n");
		FUNC1(&qedi->link_state, QEDI_LINK_DOWN);
	}
}