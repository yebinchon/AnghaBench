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
struct rx_pkt_attrib {int to_fr_ds; int qos; size_t priority; int hdrlen; scalar_t__ icv_len; scalar_t__ iv_len; scalar_t__ encrypt; int /*<<< orphan*/  ra; scalar_t__ privacy; scalar_t__ order; scalar_t__ amsdu; int /*<<< orphan*/  ack_policy; int /*<<< orphan*/  ta; int /*<<< orphan*/  bssid; int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;
struct TYPE_4__ {int /*<<< orphan*/ * preorder_ctrl; struct sta_info* psta; struct rx_pkt_attrib attrib; int /*<<< orphan*/ * rx_data; } ;
struct TYPE_5__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_6__ {int /*<<< orphan*/  rxcache; } ;
struct sta_info {TYPE_3__ sta_recvpriv; int /*<<< orphan*/ * recvreorder_ctrl; } ;
struct security_priv {int dummy; } ;
struct _adapter {struct security_priv securitypriv; } ;
typedef  int sint ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (struct security_priv*,struct sta_info*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,scalar_t__) ; 
 int _FAIL ; 
 int _SUCCESS ; 
 int FUNC8 (struct _adapter*,union recv_frame*,struct sta_info**) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC14 (union recv_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC15 (struct _adapter*,union recv_frame*,struct sta_info**) ; 
 int FUNC16 (struct _adapter*,union recv_frame*,struct sta_info**) ; 

__attribute__((used)) static sint FUNC17(struct _adapter *adapter,
			      union recv_frame *precv_frame)
{
	int res;
	u8 bretry;
	u8 *psa, *pda, *pbssid;
	struct sta_info *psta = NULL;
	u8 *ptr = precv_frame->u.hdr.rx_data;
	struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;
	struct security_priv *psecuritypriv = &adapter->securitypriv;

	bretry = FUNC6(ptr);
	pda = FUNC9(ptr);
	psa = FUNC11(ptr);
	pbssid = FUNC10(ptr);
	if (pbssid == NULL)
		return _FAIL;
	FUNC13(pattrib->dst, pda, ETH_ALEN);
	FUNC13(pattrib->src, psa, ETH_ALEN);
	FUNC13(pattrib->bssid, pbssid, ETH_ALEN);
	switch (pattrib->to_fr_ds) {
	case 0:
		FUNC13(pattrib->ra, pda, ETH_ALEN);
		FUNC13(pattrib->ta, psa, ETH_ALEN);
		res = FUNC16(adapter, precv_frame, &psta);
		break;
	case 1:
		FUNC13(pattrib->ra, pda, ETH_ALEN);
		FUNC13(pattrib->ta, pbssid, ETH_ALEN);
		res = FUNC8(adapter, precv_frame, &psta);
		break;
	case 2:
		FUNC13(pattrib->ra, pbssid, ETH_ALEN);
		FUNC13(pattrib->ta, psa, ETH_ALEN);
		res = FUNC15(adapter, precv_frame, &psta);
		break;
	case 3:
		FUNC13(pattrib->ra, FUNC3(ptr), ETH_ALEN);
		FUNC13(pattrib->ta, FUNC4(ptr), ETH_ALEN);
		return _FAIL;
	default:
		return _FAIL;
	}
	if (res == _FAIL)
		return _FAIL;
	if (psta == NULL)
		return _FAIL;
	precv_frame->u.hdr.psta = psta;
	pattrib->amsdu = 0;
	/* parsing QC field */
	if (pattrib->qos == 1) {
		pattrib->priority = FUNC5((ptr + 24));
		pattrib->ack_policy = FUNC2((ptr + 24));
		pattrib->amsdu = FUNC1((ptr + 24));
		pattrib->hdrlen = pattrib->to_fr_ds == 3 ? 32 : 26;
	} else {
		pattrib->priority = 0;
		pattrib->hdrlen = (pattrib->to_fr_ds == 3) ? 30 : 24;
	}

	if (pattrib->order)/*HT-CTRL 11n*/
		pattrib->hdrlen += 4;
	precv_frame->u.hdr.preorder_ctrl =
			 &psta->recvreorder_ctrl[pattrib->priority];

	/* decache, drop duplicate recv packets */
	if (FUNC14(precv_frame, bretry, &psta->sta_recvpriv.rxcache) ==
	    _FAIL)
		return _FAIL;

	if (pattrib->privacy) {
		FUNC0(psecuritypriv, psta, pattrib->encrypt,
			       FUNC12(pattrib->ra));
		FUNC7(pattrib->iv_len, pattrib->icv_len,
			       pattrib->encrypt);
	} else {
		pattrib->encrypt = 0;
		pattrib->iv_len = pattrib->icv_len = 0;
	}
	return _SUCCESS;
}