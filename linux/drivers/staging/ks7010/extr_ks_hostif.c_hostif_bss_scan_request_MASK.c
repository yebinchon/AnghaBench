#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_8__ {scalar_t__ size; } ;
struct TYPE_5__ {scalar_t__ phy_type; } ;
struct ks_wlan_private {scalar_t__ scan_ind_count; TYPE_4__ aplist; TYPE_1__ reg; } ;
struct TYPE_7__ {int size; int /*<<< orphan*/ * body; } ;
struct TYPE_6__ {int* body; int size; } ;
struct hostif_bss_scan_request {unsigned long scan_type; TYPE_3__ ssid; TYPE_2__ channel_list; void* ch_time_max; void* ch_time_min; } ;

/* Variables and functions */
 scalar_t__ D_11G_ONLY_MODE ; 
 int /*<<< orphan*/  HIF_SCAN_REQ ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct hostif_bss_scan_request* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ks_wlan_private*,struct hostif_bss_scan_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC5(struct ks_wlan_private *priv,
			     unsigned long scan_type, u8 *scan_ssid,
			     u8 scan_ssid_len)
{
	struct hostif_bss_scan_request *pp;

	pp = FUNC2(sizeof(*pp), HIF_SCAN_REQ);
	if (!pp)
		return;

	pp->scan_type = scan_type;

	pp->ch_time_min = FUNC0(110);	/* default value */
	pp->ch_time_max = FUNC0(130);	/* default value */
	pp->channel_list.body[0] = 1;
	pp->channel_list.body[1] = 8;
	pp->channel_list.body[2] = 2;
	pp->channel_list.body[3] = 9;
	pp->channel_list.body[4] = 3;
	pp->channel_list.body[5] = 10;
	pp->channel_list.body[6] = 4;
	pp->channel_list.body[7] = 11;
	pp->channel_list.body[8] = 5;
	pp->channel_list.body[9] = 12;
	pp->channel_list.body[10] = 6;
	pp->channel_list.body[11] = 13;
	pp->channel_list.body[12] = 7;
	if (priv->reg.phy_type == D_11G_ONLY_MODE) {
		pp->channel_list.size = 13;
	} else {
		pp->channel_list.body[13] = 14;
		pp->channel_list.size = 14;
	}
	pp->ssid.size = 0;

	/* specified SSID SCAN */
	if (scan_ssid_len > 0 && scan_ssid_len <= 32) {
		pp->ssid.size = scan_ssid_len;
		FUNC3(&pp->ssid.body[0], scan_ssid, scan_ssid_len);
	}

	FUNC4(priv, pp, FUNC1(sizeof(*pp)));

	priv->aplist.size = 0;
	priv->scan_ind_count = 0;
}