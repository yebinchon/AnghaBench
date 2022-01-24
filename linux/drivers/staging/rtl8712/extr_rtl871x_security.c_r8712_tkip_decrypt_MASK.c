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
struct rx_pkt_attrib {scalar_t__ encrypt; int hdrlen; int iv_len; int /*<<< orphan*/ * ta; int /*<<< orphan*/  ra; } ;
struct TYPE_5__ {int len; scalar_t__ rx_data; struct rx_pkt_attrib attrib; } ;
struct TYPE_6__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
union pn48 {int val; } ;
typedef  int u8 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_8__ {int* skey; } ;
struct sta_info {TYPE_4__ x_UncstKey; } ;
struct security_priv {int /*<<< orphan*/  binstallGrpkey; TYPE_3__* XGrpKey; } ;
struct arc4context {int dummy; } ;
struct _adapter {int /*<<< orphan*/  stapriv; struct security_priv securitypriv; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_7__ {int* skey; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,union pn48) ; 
 scalar_t__ _TKIP_ ; 
 int /*<<< orphan*/  FUNC1 (struct arc4context*,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct arc4context*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int*,unsigned short*,scalar_t__) ; 
 struct sta_info* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC9(struct _adapter *padapter, u8 *precvframe)
{	/* exclude ICV */
	u16 pnl;
	u32 pnh;
	u8 rc4key[16];
	u8 ttkey[16];
	u8 crc[4];
	struct arc4context mycontext;
	u32 length;
	u8 *pframe, *payload, *iv, *prwskey, idx = 0;
	union pn48 txpn;
	struct	sta_info *stainfo;
	struct	rx_pkt_attrib *prxattrib = &((union recv_frame *)
					   precvframe)->u.hdr.attrib;
	struct	security_priv	*psecuritypriv = &padapter->securitypriv;

	pframe = (unsigned char *)((union recv_frame *)
				   precvframe)->u.hdr.rx_data;
	/* 4 start to decrypt recvframe */
	if (prxattrib->encrypt == _TKIP_) {
		stainfo = FUNC8(&padapter->stapriv,
					    &prxattrib->ta[0]);
		if (stainfo != NULL) {
			iv = pframe + prxattrib->hdrlen;
			payload = pframe + prxattrib->iv_len +
				  prxattrib->hdrlen;
			length = ((union recv_frame *)precvframe)->
				 u.hdr.len - prxattrib->hdrlen -
				 prxattrib->iv_len;
			if (FUNC5(prxattrib->ra)) {
				idx = iv[3];
				prwskey = &psecuritypriv->XGrpKey[
					 ((idx >> 6) & 0x3) - 1].skey[0];
				if (!psecuritypriv->binstallGrpkey)
					return;
			} else {
				prwskey = &stainfo->x_UncstKey.skey[0];
			}
			FUNC0(iv, txpn);
			pnl = (u16)(txpn.val);
			pnh = (u32)(txpn.val >> 16);
			FUNC6((u16 *)&ttkey[0], prwskey, &prxattrib->ta[0],
				pnh);
			FUNC7(&rc4key[0], prwskey, (unsigned short *)
			       &ttkey[0], pnl);
			/* 4 decrypt payload include icv */
			FUNC2(&mycontext, rc4key, 16);
			FUNC1(&mycontext, payload, payload, length);
			*((__le32 *)crc) = FUNC3(FUNC4(payload,
					length - 4));
		}
	}
}