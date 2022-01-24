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
typedef  int /*<<< orphan*/  u8 ;
struct wilc_vif {int /*<<< orphan*/  ndev; } ;
struct wid {int size; int /*<<< orphan*/ * val; int /*<<< orphan*/  type; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  WID_CHAR ; 
 int /*<<< orphan*/  WID_DEL_BEACON ; 
 int /*<<< orphan*/  WILC_SET_CFG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct wilc_vif*,int /*<<< orphan*/ ,struct wid*,int) ; 

int FUNC2(struct wilc_vif *vif)
{
	int result;
	struct wid wid;
	u8 del_beacon = 0;

	wid.id = WID_DEL_BEACON;
	wid.type = WID_CHAR;
	wid.size = sizeof(char);
	wid.val = &del_beacon;

	result = FUNC1(vif, WILC_SET_CFG, &wid, 1);
	if (result)
		FUNC0(vif->ndev, "Failed to send delete beacon\n");

	return result;
}