
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct xmit_priv {int frag_len; } ;
struct pkt_attrib {int ether_type; int dhcp_pkt; int nr_frags; int icv_len; int last_txcmdsz; } ;
struct xmit_frame {scalar_t__ frame_tag; int * buf_addr; struct pkt_attrib attrib; struct xmit_buf* pxmitbuf; } ;
struct xmit_buf {int sctx; } ;
struct adapter {struct xmit_priv xmitpriv; } ;
typedef scalar_t__ s32 ;


 scalar_t__ DATA_FRAMETAG ;
 int PACKET_OFFSET_SZ ;
 int RTW_SCTX_DONE_UNKNOWN ;
 int RT_TRACE (int ,int ,char*) ;
 int TXDESC_SIZE ;
 scalar_t__ _FAIL ;
 scalar_t__ _SUCCESS ;
 int _drv_err_ ;
 int _drv_info_ ;
 int _module_rtl871x_xmit_c_ ;
 scalar_t__ round_up (size_t,int) ;
 int rtw_count_tx_stats (struct adapter*,struct xmit_frame*,int) ;
 int rtw_free_xmitframe (struct xmit_priv*,struct xmit_frame*) ;
 int rtw_get_ff_hwaddr (struct xmit_frame*) ;
 int rtw_issue_addbareq_cmd (struct adapter*,struct xmit_frame*) ;
 int rtw_sctx_done_err (int *,int ) ;
 int update_txdesc (struct xmit_frame*,int *,int,int) ;
 scalar_t__ usb_write_port (struct adapter*,int ,int,struct xmit_buf*) ;

__attribute__((used)) static s32 rtw_dump_xframe(struct adapter *adapt, struct xmit_frame *pxmitframe)
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
  rtw_issue_addbareq_cmd(adapt, pxmitframe);
 mem_addr = pxmitframe->buf_addr;

 RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, ("rtw_dump_xframe()\n"));

 for (t = 0; t < pattrib->nr_frags; t++) {
  if (inner_ret != _SUCCESS && ret == _SUCCESS)
   ret = _FAIL;

  if (t != (pattrib->nr_frags - 1)) {
   RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("pattrib->nr_frags=%d\n", pattrib->nr_frags));

   sz = pxmitpriv->frag_len;
   sz = sz - 4 - pattrib->icv_len;
  } else {

   sz = pattrib->last_txcmdsz;
  }

  pull = update_txdesc(pxmitframe, mem_addr, sz, 0);

  if (pull) {
   mem_addr += PACKET_OFFSET_SZ;
   pxmitframe->buf_addr = mem_addr;
   w_sz = sz + TXDESC_SIZE;
  } else {
   w_sz = sz + TXDESC_SIZE + PACKET_OFFSET_SZ;
  }
  ff_hwaddr = rtw_get_ff_hwaddr(pxmitframe);

  inner_ret = usb_write_port(adapt, ff_hwaddr, w_sz, pxmitbuf);

  rtw_count_tx_stats(adapt, pxmitframe, sz);

  RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, ("rtw_write_port, w_sz=%d\n", w_sz));

  mem_addr += w_sz;

  mem_addr = (u8 *)round_up((size_t)mem_addr, 4);
 }

 rtw_free_xmitframe(pxmitpriv, pxmitframe);

 if (ret != _SUCCESS)
  rtw_sctx_done_err(&pxmitbuf->sctx, RTW_SCTX_DONE_UNKNOWN);

 return ret;
}
