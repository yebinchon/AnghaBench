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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct cam_ctl_t {int /*<<< orphan*/  lock; } ;
struct dvobj_priv {TYPE_1__* cam_cache; struct cam_ctl_t cam_ctl; } ;
struct adapter {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  key; int /*<<< orphan*/  mac; int /*<<< orphan*/  ctrl; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 struct dvobj_priv* FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct adapter *adapter, u8 id, u16 ctrl, u8 *mac, u8 *key)
{
	struct dvobj_priv *dvobj = FUNC0(adapter);
	struct cam_ctl_t *cam_ctl = &dvobj->cam_ctl;

	FUNC2(&cam_ctl->lock);

	dvobj->cam_cache[id].ctrl = ctrl;
	FUNC1(dvobj->cam_cache[id].mac, mac, ETH_ALEN);
	FUNC1(dvobj->cam_cache[id].key, key, 16);

	FUNC3(&cam_ctl->lock);
}