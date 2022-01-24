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
typedef  size_t u8 ;
struct cam_ctl_t {int /*<<< orphan*/  lock; } ;
struct dvobj_priv {int /*<<< orphan*/ * cam_cache; struct cam_ctl_t cam_ctl; } ;
struct cam_entry_cache {int dummy; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 struct dvobj_priv* FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct adapter *adapter, u8 id)
{
	struct dvobj_priv *dvobj = FUNC0(adapter);
	struct cam_ctl_t *cam_ctl = &dvobj->cam_ctl;

	FUNC2(&cam_ctl->lock);

	FUNC1(&(dvobj->cam_cache[id]), 0, sizeof(struct cam_entry_cache));

	FUNC3(&cam_ctl->lock);
}