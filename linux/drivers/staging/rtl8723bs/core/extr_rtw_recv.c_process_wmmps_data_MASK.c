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
struct rx_pkt_attrib {int priority; int /*<<< orphan*/  src; } ;
struct TYPE_3__ {struct rx_pkt_attrib attrib; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sta_priv {int dummy; } ;
struct sta_info {int qos_info; int state; int uapsd_bk; int uapsd_vi; int uapsd_vo; int uapsd_be; scalar_t__ sleepq_ac_len; int /*<<< orphan*/  hwaddr; int /*<<< orphan*/  qos_option; } ;
struct adapter {struct sta_priv stapriv; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int WIFI_SLEEP_STATE ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sta_info* FUNC2 (struct sta_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,struct sta_info*) ; 

void FUNC4(struct adapter *padapter, union recv_frame *precv_frame)
{
	struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;
	struct sta_priv *pstapriv = &padapter->stapriv;
	struct sta_info *psta = NULL;

	psta = FUNC2(pstapriv, pattrib->src);

	if (!psta)
		return;

	if (!psta->qos_option)
		return;

	if (!(psta->qos_info&0xf))
		return;

	if (psta->state&WIFI_SLEEP_STATE) {
		u8 wmmps_ac = 0;

		switch (pattrib->priority) {
		case 1:
		case 2:
			wmmps_ac = psta->uapsd_bk&FUNC0(1);
			break;
		case 4:
		case 5:
			wmmps_ac = psta->uapsd_vi&FUNC0(1);
			break;
		case 6:
		case 7:
			wmmps_ac = psta->uapsd_vo&FUNC0(1);
			break;
		case 0:
		case 3:
		default:
			wmmps_ac = psta->uapsd_be&FUNC0(1);
			break;
		}

		if (wmmps_ac) {
			if (psta->sleepq_ac_len > 0)
				/* process received triggered frame */
				FUNC3(padapter, psta);
			else
				/* issue one qos null frame with More data bit = 0 and the EOSP bit set (= 1) */
				FUNC1(padapter, psta->hwaddr, (u16)pattrib->priority, 0, 0);
		}
	}
}