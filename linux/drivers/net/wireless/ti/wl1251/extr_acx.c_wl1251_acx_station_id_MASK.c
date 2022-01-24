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
struct wl1251 {int /*<<< orphan*/ * mac_addr; } ;
struct acx_dot11_station_id {int /*<<< orphan*/ * mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_ACX ; 
 int /*<<< orphan*/  DOT11_STATION_ID ; 
 int ENOMEM ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct acx_dot11_station_id*) ; 
 struct acx_dot11_station_id* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1251*,int /*<<< orphan*/ ,struct acx_dot11_station_id*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

int FUNC4(struct wl1251 *wl)
{
	struct acx_dot11_station_id *mac;
	int ret, i;

	FUNC3(DEBUG_ACX, "acx dot11_station_id");

	mac = FUNC1(sizeof(*mac), GFP_KERNEL);
	if (!mac)
		return -ENOMEM;

	for (i = 0; i < ETH_ALEN; i++)
		mac->mac[i] = wl->mac_addr[ETH_ALEN - 1 - i];

	ret = FUNC2(wl, DOT11_STATION_ID, mac, sizeof(*mac));

	FUNC0(mac);
	return ret;
}