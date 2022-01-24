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
typedef  scalar_t__ u8 ;
struct TYPE_4__ {int btdm_ant_num; } ;
struct TYPE_3__ {int /*<<< orphan*/  cnt_special_packet_notify; } ;
struct btc_coexist {TYPE_2__ board_info; int /*<<< orphan*/  adapter; scalar_t__ manual_control; TYPE_1__ statistics; } ;

/* Variables and functions */
 scalar_t__ BTC_PACKET_ARP ; 
 scalar_t__ BTC_PACKET_DHCP ; 
 scalar_t__ BTC_PACKET_EAPOL ; 
 scalar_t__ BTC_PACKET_UNKNOWN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ PACKET_ARP ; 
 scalar_t__ PACKET_DHCP ; 
 scalar_t__ PACKET_EAPOL ; 
 int /*<<< orphan*/  FUNC3 (struct btc_coexist*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct btc_coexist*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct btc_coexist*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct btc_coexist*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct btc_coexist*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC9 (struct btc_coexist*) ; 
 int /*<<< orphan*/  FUNC10 (struct btc_coexist*) ; 

void FUNC11(struct btc_coexist *btcoexist, u8 pkt_type)
{
	u8 packet_type;

	if (!FUNC8(btcoexist))
		return;
	btcoexist->statistics.cnt_special_packet_notify++;
	if (btcoexist->manual_control)
		return;

	if (pkt_type == PACKET_DHCP) {
		packet_type = BTC_PACKET_DHCP;
	} else if (pkt_type == PACKET_EAPOL) {
		packet_type = BTC_PACKET_EAPOL;
	} else if (pkt_type == PACKET_ARP) {
		packet_type = BTC_PACKET_ARP;
	} else {
		packet_type = BTC_PACKET_UNKNOWN;
		return;
	}

	FUNC9(btcoexist);

	if (FUNC2(btcoexist->adapter)) {
		if (btcoexist->board_info.btdm_ant_num == 2)
			FUNC7(btcoexist,
							      packet_type);
		else if (btcoexist->board_info.btdm_ant_num == 1)
			FUNC6(btcoexist,
							      packet_type);
	} else if (FUNC1(btcoexist->adapter)) {
		if (btcoexist->board_info.btdm_ant_num == 2)
			FUNC5(btcoexist,
							      packet_type);
		else if (btcoexist->board_info.btdm_ant_num == 1)
			FUNC4(btcoexist,
							      packet_type);
	} else if (FUNC0(btcoexist->adapter)) {
		if (btcoexist->board_info.btdm_ant_num == 2)
			FUNC3(btcoexist,
							      packet_type);
	}

	FUNC10(btcoexist);
}