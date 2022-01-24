#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wlandevice {int /*<<< orphan*/  netdev; struct hfa384x* priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  assocstatus; } ;
struct hfa384x_inf_frame {TYPE_1__ info; } ;
struct hfa384x_assoc_status {scalar_t__ assocstatus; scalar_t__ reason; int /*<<< orphan*/  sta_addr; } ;
struct TYPE_4__ {int cnt; int* assoc; int /*<<< orphan*/ * addr; } ;
struct hfa384x {TYPE_2__ authlist; } ;
typedef  int /*<<< orphan*/  rec ;

/* Variables and functions */
 scalar_t__ HFA384x_ASSOCSTATUS_AUTHFAIL ; 
 scalar_t__ HFA384x_ASSOCSTATUS_REASSOC ; 
 scalar_t__ HFA384x_ASSOCSTATUS_STAASSOC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct hfa384x_assoc_status*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(struct wlandevice *wlandev,
				      struct hfa384x_inf_frame *inf)
{
	struct hfa384x *hw = wlandev->priv;
	struct hfa384x_assoc_status rec;
	int i;

	FUNC2(&rec, &inf->info.assocstatus, sizeof(rec));
	FUNC1(&rec.assocstatus);
	FUNC1(&rec.reason);

	/*
	 * Find the address in the list of authenticated stations.
	 * If it wasn't found, then this address has not been previously
	 * authenticated and something weird has happened if this is
	 * anything other than an "authentication failed" message.
	 * If the address was found, then set the "associated" flag for
	 * that station, based on whether the station is associating or
	 * losing its association.  Something weird has also happened
	 * if we find the address in the list of authenticated stations
	 * but we are getting an "authentication failed" message.
	 */

	for (i = 0; i < hw->authlist.cnt; i++)
		if (FUNC0(rec.sta_addr, hw->authlist.addr[i]))
			break;

	if (i >= hw->authlist.cnt) {
		if (rec.assocstatus != HFA384x_ASSOCSTATUS_AUTHFAIL)
			FUNC3(wlandev->netdev,
				    "assocstatus info frame received for non-authenticated station.\n");
	} else {
		hw->authlist.assoc[i] =
		    (rec.assocstatus == HFA384x_ASSOCSTATUS_STAASSOC ||
		     rec.assocstatus == HFA384x_ASSOCSTATUS_REASSOC);

		if (rec.assocstatus == HFA384x_ASSOCSTATUS_AUTHFAIL)
			FUNC3(wlandev->netdev,
				    "authfail assocstatus info frame received for authenticated station.\n");
	}
}