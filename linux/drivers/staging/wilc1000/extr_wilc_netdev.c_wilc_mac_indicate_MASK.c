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
struct wilc {void* mac_status; int /*<<< orphan*/  sync_event; } ;
typedef  void* s8 ;

/* Variables and functions */
 int /*<<< orphan*/  WID_STATUS ; 
 void* WILC_MAC_STATUS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wilc*,int /*<<< orphan*/ ,void**,int) ; 

void FUNC2(struct wilc *wilc)
{
	s8 status;

	FUNC1(wilc, WID_STATUS, &status, 1);
	if (wilc->mac_status == WILC_MAC_STATUS_INIT) {
		wilc->mac_status = status;
		FUNC0(&wilc->sync_event);
	} else {
		wilc->mac_status = status;
	}
}