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
typedef  int /*<<< orphan*/  uwb_rsv_cb_f ;
struct uwb_rsv {int /*<<< orphan*/  state; void* pal_priv; int /*<<< orphan*/  callback; } ;

/* Variables and functions */
 int /*<<< orphan*/  UWB_RSV_STATE_T_ACCEPTED ; 
 int /*<<< orphan*/  FUNC0 (struct uwb_rsv*) ; 

void FUNC1(struct uwb_rsv *rsv, uwb_rsv_cb_f cb, void *pal_priv)
{
	FUNC0(rsv);

	rsv->callback = cb;
	rsv->pal_priv = pal_priv;
	rsv->state    = UWB_RSV_STATE_T_ACCEPTED;
}