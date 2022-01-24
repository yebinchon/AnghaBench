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
struct rx_pkt_attrib {int pkt_len; } ;
struct TYPE_3__ {int* rx_data; struct rx_pkt_attrib attrib; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
typedef  int u8 ;
struct mlme_ext_priv {int /*<<< orphan*/  sa_query_timer; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int WLAN_HDR_A3_LEN ; 
 unsigned int _SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,int,unsigned short) ; 
 int /*<<< orphan*/  FUNC4 (unsigned short*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

unsigned int FUNC6(struct adapter *padapter, union recv_frame *precv_frame)
{
	u8 *pframe = precv_frame->u.hdr.rx_data;
	struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;
	struct mlme_ext_priv *pmlmeext = &(padapter->mlmeextpriv);
	unsigned short tid;
	/* Baron */

	FUNC0("OnAction_sa_query\n");

	switch (pframe[WLAN_HDR_A3_LEN+1]) {
	case 0: /* SA Query req */
		FUNC4(&tid, &pframe[WLAN_HDR_A3_LEN+2], sizeof(unsigned short));
		FUNC0("OnAction_sa_query request, action =%d, tid =%04x\n", pframe[WLAN_HDR_A3_LEN+1], tid);
		FUNC3(padapter, FUNC1(pframe), 1, tid);
		break;

	case 1: /* SA Query rsp */
		FUNC2(&pmlmeext->sa_query_timer);
		FUNC0("OnAction_sa_query response, action =%d, tid =%04x, cancel timer\n", pframe[WLAN_HDR_A3_LEN+1], pframe[WLAN_HDR_A3_LEN+2]);
		break;
	default:
		break;
	}
	if (0) {
		int pp;
		FUNC5("pattrib->pktlen = %d =>", pattrib->pkt_len);
		for (pp = 0; pp < pattrib->pkt_len; pp++)
			FUNC5(" %02x ", pframe[pp]);
		FUNC5("\n");
	}

	return _SUCCESS;
}