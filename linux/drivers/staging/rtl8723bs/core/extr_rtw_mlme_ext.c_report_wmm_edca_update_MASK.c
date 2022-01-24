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
struct wmm_event {scalar_t__ wmm; } ;
struct mlme_ext_priv {int /*<<< orphan*/  event_seq; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int cmdsz; scalar_t__ rspsz; int /*<<< orphan*/ * rsp; int /*<<< orphan*/ * parmbuf; int /*<<< orphan*/  cmdcode; int /*<<< orphan*/  list; } ;
struct adapter {struct cmd_priv cmdpriv; struct mlme_ext_priv mlmeextpriv; } ;
struct C2HEvent_Header {int len; int /*<<< orphan*/  seq; int /*<<< orphan*/  ID; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _Set_MLME_EVT ; 
 int /*<<< orphan*/  _WMM ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct cmd_obj*) ; 
 int /*<<< orphan*/  FUNC5 (struct cmd_priv*,struct cmd_obj*) ; 
 void* FUNC6 (int) ; 

void FUNC7(struct adapter *padapter)
{
	struct cmd_obj *pcmd_obj;
	u8 *pevtcmd;
	u32 cmdsz;
	struct wmm_event		*pwmm_event;
	struct C2HEvent_Header	*pc2h_evt_hdr;
	struct mlme_ext_priv 	*pmlmeext = &padapter->mlmeextpriv;
	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;

	pcmd_obj = FUNC6(sizeof(struct cmd_obj));
	if (!pcmd_obj)
		return;

	cmdsz = (sizeof(struct wmm_event) + sizeof(struct C2HEvent_Header));
	pevtcmd = FUNC6(cmdsz);
	if (!pevtcmd) {
		FUNC4(pcmd_obj);
		return;
	}

	FUNC2(&pcmd_obj->list);

	pcmd_obj->cmdcode = FUNC0(_Set_MLME_EVT);
	pcmd_obj->cmdsz = cmdsz;
	pcmd_obj->parmbuf = pevtcmd;

	pcmd_obj->rsp = NULL;
	pcmd_obj->rspsz  = 0;

	pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
	pc2h_evt_hdr->len = sizeof(struct wmm_event);
	pc2h_evt_hdr->ID = FUNC1(_WMM);
	pc2h_evt_hdr->seq = FUNC3(&pmlmeext->event_seq);

	pwmm_event = (struct wmm_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
	pwmm_event->wmm = 0;

	FUNC5(pcmdpriv, pcmd_obj);

	return;

}