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
struct rx_pkt_attrib {int /*<<< orphan*/  src; } ;
struct TYPE_3__ {struct rx_pkt_attrib attrib; int /*<<< orphan*/ * rx_data; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
typedef  int /*<<< orphan*/  u8 ;
struct sta_priv {int dummy; } ;
struct sta_info {int state; } ;
struct adapter {struct sta_priv stapriv; } ;

/* Variables and functions */
 unsigned char FUNC0 (int /*<<< orphan*/ *) ; 
 int WIFI_SLEEP_STATE ; 
 struct sta_info* FUNC1 (struct sta_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,struct sta_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,struct sta_info*) ; 

void FUNC4(struct adapter *padapter, union recv_frame *precv_frame)
{
	unsigned char pwrbit;
	u8 *ptr = precv_frame->u.hdr.rx_data;
	struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;
	struct sta_priv *pstapriv = &padapter->stapriv;
	struct sta_info *psta = NULL;

	psta = FUNC1(pstapriv, pattrib->src);

	pwrbit = FUNC0(ptr);

	if (psta) {
		if (pwrbit) {
			if (!(psta->state & WIFI_SLEEP_STATE)) {
				/* psta->state |= WIFI_SLEEP_STATE; */
				/* pstapriv->sta_dz_bitmap |= BIT(psta->aid); */

				FUNC2(padapter, psta);

				/* DBG_871X("to sleep, sta_dz_bitmap =%x\n", pstapriv->sta_dz_bitmap); */
			}
		} else {
			if (psta->state & WIFI_SLEEP_STATE) {
				/* psta->state ^= WIFI_SLEEP_STATE; */
				/* pstapriv->sta_dz_bitmap &= ~BIT(psta->aid); */

				FUNC3(padapter, psta);

				/* DBG_871X("to wakeup, sta_dz_bitmap =%x\n", pstapriv->sta_dz_bitmap); */
			}
		}

	}
}