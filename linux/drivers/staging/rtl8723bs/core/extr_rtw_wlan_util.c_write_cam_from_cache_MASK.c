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
struct cam_entry_cache {int /*<<< orphan*/  key; int /*<<< orphan*/  mac; int /*<<< orphan*/  ctrl; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dvobj_priv* FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct cam_entry_cache*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

inline void FUNC5(struct adapter *adapter, u8 id)
{
	struct dvobj_priv *dvobj = FUNC1(adapter);
	struct cam_ctl_t *cam_ctl = &dvobj->cam_ctl;
	struct cam_entry_cache cache;

	FUNC3(&cam_ctl->lock);
	FUNC2(&cache, &dvobj->cam_cache[id], sizeof(struct cam_entry_cache));
	FUNC4(&cam_ctl->lock);

	FUNC0(adapter, id, cache.ctrl, cache.mac, cache.key);
}