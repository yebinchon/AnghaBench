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
struct rx_pkt_attrib {int /*<<< orphan*/  dst; } ;
struct TYPE_7__ {struct sta_info* psta; struct rx_pkt_attrib attrib; } ;
struct TYPE_8__ {TYPE_3__ hdr; } ;
union recv_frame {TYPE_4__ u; } ;
struct stainfo_stats {int rx_bytes; int /*<<< orphan*/  rx_data_pkts; } ;
struct sta_info {struct stainfo_stats sta_stats; } ;
struct recv_priv {int rx_bytes; } ;
struct TYPE_5__ {int /*<<< orphan*/  NumRxUnicastOkInPeriod; int /*<<< orphan*/  NumRxOkInPeriod; } ;
struct TYPE_6__ {TYPE_1__ LinkDetectInfo; } ;
struct adapter {TYPE_2__ mlmepriv; struct recv_priv recvpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (union recv_frame*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int,int /*<<< orphan*/ ) ; 

void FUNC4(struct adapter *padapter, union recv_frame *prframe, struct sta_info *sta)
{
	int	sz;
	struct sta_info 	*psta = NULL;
	struct stainfo_stats	*pstats = NULL;
	struct rx_pkt_attrib	*pattrib = &prframe->u.hdr.attrib;
	struct recv_priv 	*precvpriv = &padapter->recvpriv;

	sz = FUNC2(prframe);
	precvpriv->rx_bytes += sz;

	padapter->mlmepriv.LinkDetectInfo.NumRxOkInPeriod++;

	if ((!FUNC1(pattrib->dst)) && (!FUNC0(pattrib->dst))) {
		padapter->mlmepriv.LinkDetectInfo.NumRxUnicastOkInPeriod++;
	}

	if (sta)
		psta = sta;
	else
		psta = prframe->u.hdr.psta;

	if (psta) {
		pstats = &psta->sta_stats;

		pstats->rx_data_pkts++;
		pstats->rx_bytes += sz;
	}

	FUNC3(padapter, false, 0);
}