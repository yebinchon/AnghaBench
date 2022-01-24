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
struct uwb_rsv {int /*<<< orphan*/  handle_timeout_work; struct uwb_rc* rc; int /*<<< orphan*/  timer; int /*<<< orphan*/  kref; int /*<<< orphan*/  pal_node; int /*<<< orphan*/  rc_node; } ;
struct uwb_rc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct uwb_rsv* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uwb_rsv_handle_timeout_work ; 
 int /*<<< orphan*/  uwb_rsv_timer ; 

__attribute__((used)) static struct uwb_rsv *FUNC5(struct uwb_rc *rc)
{
	struct uwb_rsv *rsv;

	rsv = FUNC3(sizeof(struct uwb_rsv), GFP_KERNEL);
	if (!rsv)
		return NULL;

	FUNC0(&rsv->rc_node);
	FUNC0(&rsv->pal_node);
	FUNC2(&rsv->kref);
	FUNC4(&rsv->timer, uwb_rsv_timer, 0);

	rsv->rc = rc;
	FUNC1(&rsv->handle_timeout_work, uwb_rsv_handle_timeout_work);

	return rsv;
}