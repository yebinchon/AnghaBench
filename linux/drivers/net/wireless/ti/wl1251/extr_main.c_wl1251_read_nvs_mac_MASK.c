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
struct wl1251 {int /*<<< orphan*/  mac_addr; int /*<<< orphan*/ * nvs; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETH_ALEN ; 
 int NVS_OFF_MAC_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct wl1251*) ; 

__attribute__((used)) static int FUNC3(struct wl1251 *wl)
{
	u8 mac[ETH_ALEN];
	int i, ret;

	ret = FUNC2(wl);
	if (ret)
		return ret;

	/* MAC is stored in reverse order */
	for (i = 0; i < ETH_ALEN; i++)
		mac[i] = wl->nvs[NVS_OFF_MAC_DATA + ETH_ALEN - i - 1];

	/* 00:00:20:07:03:09 is in example file wl1251-nvs.bin, so invalid */
	if (FUNC0(mac, "\x00\x00\x20\x07\x03\x09"))
		return -EINVAL;

	FUNC1(wl->mac_addr, mac, ETH_ALEN);
	return 0;
}