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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct dvobj_priv {int* macid; int processing_dev_remove; TYPE_1__ cam_ctl; int /*<<< orphan*/  disable_func; int /*<<< orphan*/  lock; int /*<<< orphan*/  setbw_mutex; int /*<<< orphan*/  setch_mutex; int /*<<< orphan*/  h2c_fwcmd_mutex; int /*<<< orphan*/  hw_init_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct dvobj_priv* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct dvobj_priv *FUNC4(void)
{
	struct dvobj_priv *pdvobj = NULL;

	pdvobj = FUNC2(sizeof(*pdvobj));
	if (pdvobj == NULL)
		return NULL;

	FUNC1(&pdvobj->hw_init_mutex);
	FUNC1(&pdvobj->h2c_fwcmd_mutex);
	FUNC1(&pdvobj->setch_mutex);
	FUNC1(&pdvobj->setbw_mutex);

	FUNC3(&pdvobj->lock);

	pdvobj->macid[1] = true; /* macid = 1 for bc/mc stainfo */

	pdvobj->processing_dev_remove = false;

	FUNC0(&pdvobj->disable_func, 0);

	FUNC3(&pdvobj->cam_ctl.lock);

	return pdvobj;
}