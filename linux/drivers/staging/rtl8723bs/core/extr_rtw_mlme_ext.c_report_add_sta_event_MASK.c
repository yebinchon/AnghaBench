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
typedef  int u32 ;
struct stassoc_event {int cam_id; int /*<<< orphan*/  macaddr; } ;
struct mlme_ext_priv {int /*<<< orphan*/  event_seq; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int cmdsz; scalar_t__ rspsz; int /*<<< orphan*/ * rsp; int /*<<< orphan*/ * parmbuf; int /*<<< orphan*/  cmdcode; int /*<<< orphan*/  list; } ;
struct adapter {struct cmd_priv cmdpriv; struct mlme_ext_priv mlmeextpriv; } ;
struct C2HEvent_Header {int len; int /*<<< orphan*/  seq; int /*<<< orphan*/  ID; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _AddSTA ; 
 int /*<<< orphan*/  _Set_MLME_EVT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct cmd_obj*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cmd_priv*,struct cmd_obj*) ; 
 void* FUNC8 (int) ; 

void FUNC9(struct adapter *padapter, unsigned char *MacAddr, int cam_idx)
{
	struct cmd_obj *pcmd_obj;
	u8 *pevtcmd;
	u32 cmdsz;
	struct stassoc_event		*padd_sta_evt;
	struct C2HEvent_Header	*pc2h_evt_hdr;
	struct mlme_ext_priv 	*pmlmeext = &padapter->mlmeextpriv;
	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;

	pcmd_obj = FUNC8(sizeof(struct cmd_obj));
	if (pcmd_obj == NULL)
		return;

	cmdsz = (sizeof(struct stassoc_event) + sizeof(struct C2HEvent_Header));
	pevtcmd = FUNC8(cmdsz);
	if (pevtcmd == NULL) {
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
	pc2h_evt_hdr->len = sizeof(struct stassoc_event);
	pc2h_evt_hdr->ID = FUNC2(_AddSTA);
	pc2h_evt_hdr->seq = FUNC4(&pmlmeext->event_seq);

	padd_sta_evt = (struct stassoc_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
	FUNC6((unsigned char *)(&(padd_sta_evt->macaddr)), MacAddr, ETH_ALEN);
	padd_sta_evt->cam_id = cam_idx;

	FUNC0("report_add_sta_event: add STA\n");

	FUNC7(pcmdpriv, pcmd_obj);

	return;
}