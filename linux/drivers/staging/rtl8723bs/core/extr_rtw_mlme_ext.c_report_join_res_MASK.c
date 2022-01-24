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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct wlan_bssid_ex {int dummy; } ;
struct mlme_ext_info {int /*<<< orphan*/  network; } ;
struct mlme_ext_priv {int /*<<< orphan*/  event_seq; struct mlme_ext_info mlmext_info; } ;
struct TYPE_2__ {int join_res; int aid; int /*<<< orphan*/  network; } ;
struct joinbss_event {TYPE_1__ network; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int cmdsz; scalar_t__ rspsz; int /*<<< orphan*/ * rsp; int /*<<< orphan*/ * parmbuf; int /*<<< orphan*/  cmdcode; int /*<<< orphan*/  list; } ;
struct adapter {struct cmd_priv cmdpriv; struct mlme_ext_priv mlmeextpriv; } ;
struct C2HEvent_Header {int len; int /*<<< orphan*/  seq; int /*<<< orphan*/  ID; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _JoinBss ; 
 int /*<<< orphan*/  _Set_MLME_EVT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct cmd_obj*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct cmd_priv*,struct cmd_obj*) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*,int /*<<< orphan*/ *) ; 
 void* FUNC9 (int) ; 

void FUNC10(struct adapter *padapter, int res)
{
	struct cmd_obj *pcmd_obj;
	u8 *pevtcmd;
	u32 cmdsz;
	struct joinbss_event		*pjoinbss_evt;
	struct C2HEvent_Header	*pc2h_evt_hdr;
	struct mlme_ext_priv 	*pmlmeext = &padapter->mlmeextpriv;
	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;

	pcmd_obj = FUNC9(sizeof(struct cmd_obj));
	if (!pcmd_obj)
		return;

	cmdsz = (sizeof(struct joinbss_event) + sizeof(struct C2HEvent_Header));
	pevtcmd = FUNC9(cmdsz);
	if (!pevtcmd) {
		FUNC5(pcmd_obj);
		return;
	}

	FUNC3(&pcmd_obj->list);

	pcmd_obj->cmdcode = FUNC1(_Set_MLME_EVT);
	pcmd_obj->cmdsz = cmdsz;
	pcmd_obj->parmbuf = pevtcmd;

	pcmd_obj->rsp = NULL;
	pcmd_obj->rspsz  = 0;

	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
	pc2h_evt_hdr->len = sizeof(struct joinbss_event);
	pc2h_evt_hdr->ID = FUNC2(_JoinBss);
	pc2h_evt_hdr->seq = FUNC4(&pmlmeext->event_seq);

	pjoinbss_evt = (struct joinbss_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
	FUNC6((unsigned char *)(&(pjoinbss_evt->network.network)), &(pmlmeinfo->network), sizeof(struct wlan_bssid_ex));
	pjoinbss_evt->network.join_res	= pjoinbss_evt->network.aid = res;

	FUNC0("report_join_res(%d)\n", res);


	FUNC8(padapter, (u8 *)&pjoinbss_evt->network);


	FUNC7(pcmdpriv, pcmd_obj);

	return;

}