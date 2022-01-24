#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint ;
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_5__ {int /*<<< orphan*/  ssid_length; scalar_t__ ssid; } ;
struct wlan_bssid_ex {TYPE_2__ ssid; } ;
struct recv_frame {TYPE_1__* pkt; } ;
struct TYPE_6__ {scalar_t__ join_res; } ;
struct mlme_priv {TYPE_3__ cur_network; } ;
struct mlme_ext_info {scalar_t__ hidden_ssid_mode; struct wlan_bssid_ex network; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; struct mlme_priv mlmepriv; } ;
struct TYPE_4__ {int len; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int WIFI_ADHOC_MASTER_STATE ; 
 int WIFI_AP_STATE ; 
 int WIFI_STATION_STATE ; 
 int WLAN_HDR_A3_LEN ; 
 int _FW_LINKED ; 
 int _PROBEREQ_IE_OFFSET_ ; 
 int /*<<< orphan*/  _SSID_IE_ ; 
 unsigned int _SUCCESS ; 
 scalar_t__ FUNC0 (struct mlme_priv*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (void*,void*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int*,int) ; 

__attribute__((used)) static unsigned int FUNC5(struct adapter *padapter,
			       struct recv_frame *precv_frame)
{
	unsigned int ielen;
	unsigned char *p;
	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
	struct wlan_bssid_ex *cur = &pmlmeinfo->network;
	u8 *pframe = precv_frame->pkt->data;
	uint len = precv_frame->pkt->len;

	if (FUNC0(pmlmepriv, WIFI_STATION_STATE))
		return _SUCCESS;

	if (!FUNC0(pmlmepriv, _FW_LINKED) &&
	    !FUNC0(pmlmepriv, WIFI_ADHOC_MASTER_STATE|WIFI_AP_STATE))
		return _SUCCESS;

	p = FUNC4(pframe + WLAN_HDR_A3_LEN + _PROBEREQ_IE_OFFSET_, _SSID_IE_, &ielen,
			len - WLAN_HDR_A3_LEN - _PROBEREQ_IE_OFFSET_);

	/* check (wildcard) SSID */
	if (p) {
		if ((ielen != 0 && FUNC3((void *)(p+2), (void *)cur->ssid.ssid, cur->ssid.ssid_length)) ||
		    (ielen == 0 && pmlmeinfo->hidden_ssid_mode))
			return _SUCCESS;

		if (FUNC0(pmlmepriv, _FW_LINKED) &&
		    pmlmepriv->cur_network.join_res)
			FUNC2(padapter, FUNC1(pframe));
	}
	return _SUCCESS;
}