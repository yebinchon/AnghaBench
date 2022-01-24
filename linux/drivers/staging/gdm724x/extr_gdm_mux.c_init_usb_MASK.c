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
struct rx_cxt {int /*<<< orphan*/  rx_free_list; int /*<<< orphan*/  free_list_lock; int /*<<< orphan*/  submit_list_lock; int /*<<< orphan*/  to_host_lock; int /*<<< orphan*/  rx_submit_list; int /*<<< orphan*/  to_host_list; } ;
struct mux_rx {int /*<<< orphan*/  free_list; } ;
struct mux_dev {int /*<<< orphan*/  work_rx; int /*<<< orphan*/  write_lock; struct rx_cxt rx; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int MAX_ISSUE_NUM ; 
 struct mux_rx* FUNC2 () ; 
 int /*<<< orphan*/  do_rx ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct mux_dev *mux_dev)
{
	struct mux_rx *r;
	struct rx_cxt *rx = &mux_dev->rx;
	int ret = 0;
	int i;

	FUNC4(&mux_dev->write_lock);
	FUNC1(&rx->to_host_list);
	FUNC1(&rx->rx_submit_list);
	FUNC1(&rx->rx_free_list);
	FUNC4(&rx->to_host_lock);
	FUNC4(&rx->submit_list_lock);
	FUNC4(&rx->free_list_lock);

	for (i = 0; i < MAX_ISSUE_NUM * 2; i++) {
		r = FUNC2();
		if (!r) {
			ret = -ENOMEM;
			break;
		}

		FUNC3(&r->free_list, &rx->rx_free_list);
	}

	FUNC0(&mux_dev->work_rx, do_rx);

	return ret;
}