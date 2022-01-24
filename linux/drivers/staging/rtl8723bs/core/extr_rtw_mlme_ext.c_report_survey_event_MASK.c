#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  union recv_frame {int dummy; } recv_frame ;
struct cmd_obj {int cmdsz; scalar_t__ rspsz; int /*<<< orphan*/ * rsp; struct cmd_obj* parmbuf; int /*<<< orphan*/  cmdcode; int /*<<< orphan*/  list; } ;
typedef  struct cmd_obj u8 ;
typedef  int u32 ;
struct wlan_bssid_ex {int dummy; } ;
struct survey_event {int /*<<< orphan*/  bss; } ;
struct TYPE_2__ {int /*<<< orphan*/  bss_cnt; } ;
struct mlme_ext_priv {TYPE_1__ sitesurvey_res; int /*<<< orphan*/  event_seq; } ;
struct cmd_priv {int dummy; } ;
struct adapter {struct cmd_priv cmdpriv; struct mlme_ext_priv mlmeextpriv; } ;
struct C2HEvent_Header {int len; int /*<<< orphan*/  seq; int /*<<< orphan*/  ID; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ _FAIL ; 
 int /*<<< orphan*/  _Set_MLME_EVT ; 
 int /*<<< orphan*/  _Survey ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct adapter*,union recv_frame*,struct wlan_bssid_ex*) ; 
 int /*<<< orphan*/  FUNC5 (struct cmd_obj*) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct cmd_priv*,struct cmd_obj*) ; 
 struct cmd_obj* FUNC8 (int) ; 

void FUNC9(struct adapter *padapter, union recv_frame *precv_frame)
{
	struct cmd_obj *pcmd_obj;
	u8 *pevtcmd;
	u32 cmdsz;
	struct survey_event	*psurvey_evt;
	struct C2HEvent_Header *pc2h_evt_hdr;
	struct mlme_ext_priv *pmlmeext;
	struct cmd_priv *pcmdpriv;
	/* u8 *pframe = precv_frame->u.hdr.rx_data; */
	/* uint len = precv_frame->u.hdr.len; */

	if (!padapter)
		return;

	pmlmeext = &padapter->mlmeextpriv;
	pcmdpriv = &padapter->cmdpriv;

	pcmd_obj = FUNC8(sizeof(struct cmd_obj));
	if (!pcmd_obj)
		return;

	cmdsz = (sizeof(struct survey_event) + sizeof(struct C2HEvent_Header));
	pevtcmd = FUNC8(cmdsz);
	if (!pevtcmd) {
		FUNC5(pcmd_obj);
		return;
	}

	FUNC2(&pcmd_obj->list);

	pcmd_obj->cmdcode = FUNC0(_Set_MLME_EVT);
	pcmd_obj->cmdsz = cmdsz;
	pcmd_obj->parmbuf = pevtcmd;

	pcmd_obj->rsp = NULL;
	pcmd_obj->rspsz  = 0;

	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
	pc2h_evt_hdr->len = sizeof(struct survey_event);
	pc2h_evt_hdr->ID = FUNC1(_Survey);
	pc2h_evt_hdr->seq = FUNC3(&pmlmeext->event_seq);

	psurvey_evt = (struct survey_event *)(pevtcmd + sizeof(struct C2HEvent_Header));

	if (FUNC4(padapter, precv_frame, (struct wlan_bssid_ex *)&psurvey_evt->bss) == _FAIL) {
		FUNC5(pcmd_obj);
		FUNC5(pevtcmd);
		return;
	}

	FUNC6(padapter, &psurvey_evt->bss);

	FUNC7(pcmdpriv, pcmd_obj);

	pmlmeext->sitesurvey_res.bss_cnt++;

	return;

}