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
typedef  scalar_t__ u8 ;
struct cam_ctl_t {int /*<<< orphan*/  lock; int /*<<< orphan*/  bitmap; } ;
struct dvobj_priv {struct cam_ctl_t cam_ctl; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ TOTAL_CAM_ENTRY ; 
 struct dvobj_priv* FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct adapter *adapter, u8 cam_id)
{
	struct dvobj_priv *dvobj = FUNC1(adapter);
	struct cam_ctl_t *cam_ctl = &dvobj->cam_ctl;

	FUNC2(&cam_ctl->lock);

	if (cam_id < TOTAL_CAM_ENTRY)
		cam_ctl->bitmap &= ~(FUNC0(cam_id));

	FUNC3(&cam_ctl->lock);
}