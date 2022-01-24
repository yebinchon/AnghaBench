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
struct cam_ctl_t {int /*<<< orphan*/  lock; scalar_t__ bitmap; } ;
struct dvobj_priv {int /*<<< orphan*/  cam_cache; struct cam_ctl_t cam_ctl; } ;
struct cam_entry_cache {int dummy; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_VAR_CAM_INVALID_ALL ; 
 int TOTAL_CAM_ENTRY ; 
 struct dvobj_priv* FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct adapter *padapter)
{
	struct dvobj_priv *dvobj = FUNC0(padapter);
	struct cam_ctl_t *cam_ctl = &dvobj->cam_ctl;

	FUNC2(padapter, HW_VAR_CAM_INVALID_ALL, NULL);

	FUNC3(&cam_ctl->lock);
	cam_ctl->bitmap = 0;
	FUNC1(dvobj->cam_cache, 0, sizeof(struct cam_entry_cache)*TOTAL_CAM_ENTRY);
	FUNC4(&cam_ctl->lock);
}