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
typedef  scalar_t__ uint ;
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  WLAN_EID_SSID ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,scalar_t__) ; 
 int* FUNC2 (int*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(u8 *ies, u32 ies_len, u8 hidden_ssid_mode)
{
	u8 *ssid_ie;
	uint ssid_len_ori;
	int len_diff = 0;

	ssid_ie = FUNC2(ies,  WLAN_EID_SSID, &ssid_len_ori, ies_len);

	if (ssid_ie && ssid_len_ori > 0) {
		switch (hidden_ssid_mode) {
		case 1: {
			u8 *next_ie = ssid_ie + 2 + ssid_len_ori;
			u32 remain_len = 0;

			remain_len = ies_len - (next_ie - ies);

			ssid_ie[1] = 0;
			FUNC0(ssid_ie+2, next_ie, remain_len);
			len_diff -= ssid_len_ori;

			break;
		}
		case 2:
			FUNC1(&ssid_ie[2], 0, ssid_len_ori);
			break;
		default:
			break;
		}
	}

	return len_diff;
}