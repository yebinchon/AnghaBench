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
typedef  int /*<<< orphan*/  u32 ;
struct xmit_priv {int frag_len; } ;
struct pkt_attrib {int ether_type; int dhcp_pkt; int nr_frags; int icv_len; int last_txcmdsz; } ;
struct xmit_frame {scalar_t__ frame_tag; int /*<<< orphan*/ * buf_addr; struct pkt_attrib attrib; struct xmit_buf* pxmitbuf; } ;
struct xmit_buf {int /*<<< orphan*/  sctx; } ;
struct adapter {struct xmit_priv xmitpriv; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ DATA_FRAMETAG ; 
 int PACKET_OFFSET_SZ ; 
 int /*<<< orphan*/  RTW_SCTX_DONE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int TXDESC_SIZE ; 
 scalar_t__ _FAIL ; 
 scalar_t__ _SUCCESS ; 
 int /*<<< orphan*/  _drv_err_ ; 
 int /*<<< orphan*/  _drv_info_ ; 
 int /*<<< orphan*/  _module_rtl871x_xmit_c_ ; 
 scalar_t__ FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,struct xmit_frame*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct xmit_priv*,struct xmit_frame*) ; 
 int /*<<< orphan*/  FUNC4 (struct xmit_frame*) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,struct xmit_frame*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct xmit_frame*,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC8 (struct adapter*,int /*<<< orphan*/ ,int,struct xmit_buf*) ; 

__attribute__((used)) static s32 FUNC9(struct adapter *adapt, struct xmit_frame *pxmitframe)
{
	s32 ret = _SUCCESS;
	s32 inner_ret = _SUCCESS;
	int t, sz, w_sz, pull = 0;
	u8 *mem_addr;
	u32 ff_hwaddr;
	struct xmit_buf *pxmitbuf = pxmitframe->pxmitbuf;
	struct pkt_attrib *pattrib = &pxmitframe->attrib;
	struct xmit_priv *pxmitpriv = &adapt->xmitpriv;

	if ((pxmitframe->frame_tag == DATA_FRAMETAG) &&
	    (pxmitframe->attrib.ether_type != 0x0806) &&
	    (pxmitframe->attrib.ether_type != 0x888e) &&
	    (pxmitframe->attrib.ether_type != 0x88b4) &&
	    (pxmitframe->attrib.dhcp_pkt != 1))
		FUNC5(adapt, pxmitframe);
	mem_addr = pxmitframe->buf_addr;

	FUNC0(_module_rtl871x_xmit_c_, _drv_info_, ("rtw_dump_xframe()\n"));

	for (t = 0; t < pattrib->nr_frags; t++) {
		if (inner_ret != _SUCCESS && ret == _SUCCESS)
			ret = _FAIL;

		if (t != (pattrib->nr_frags - 1)) {
			FUNC0(_module_rtl871x_xmit_c_, _drv_err_, ("pattrib->nr_frags=%d\n", pattrib->nr_frags));

			sz = pxmitpriv->frag_len;
			sz = sz - 4 - pattrib->icv_len;
		} else {
			/* no frag */
			sz = pattrib->last_txcmdsz;
		}

		pull = FUNC7(pxmitframe, mem_addr, sz, false);

		if (pull) {
			mem_addr += PACKET_OFFSET_SZ; /* pull txdesc head */
			pxmitframe->buf_addr = mem_addr;
			w_sz = sz + TXDESC_SIZE;
		} else {
			w_sz = sz + TXDESC_SIZE + PACKET_OFFSET_SZ;
		}
		ff_hwaddr = FUNC4(pxmitframe);

		inner_ret = FUNC8(adapt, ff_hwaddr, w_sz, pxmitbuf);

		FUNC2(adapt, pxmitframe, sz);

		FUNC0(_module_rtl871x_xmit_c_, _drv_info_, ("rtw_write_port, w_sz=%d\n", w_sz));

		mem_addr += w_sz;

		mem_addr = (u8 *)FUNC1((size_t)mem_addr, 4);
	}

	FUNC3(pxmitpriv, pxmitframe);

	if  (ret != _SUCCESS)
		FUNC6(&pxmitbuf->sctx, RTW_SCTX_DONE_UNKNOWN);

	return ret;
}