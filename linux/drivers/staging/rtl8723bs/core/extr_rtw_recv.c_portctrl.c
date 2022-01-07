
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rx_pkt_attrib {int hdrlen; int iv_len; scalar_t__ bdecrypted; int privacy; int * ta; } ;
struct recv_frame_hdr {struct rx_pkt_attrib attrib; } ;
struct TYPE_6__ {struct recv_frame_hdr hdr; } ;
union recv_frame {TYPE_3__ u; } ;
typedef int uint ;
typedef int u8 ;
typedef int u16 ;
struct sta_priv {int dummy; } ;
struct sta_info {scalar_t__ ieee8021x_blocked; } ;
struct TYPE_5__ {int free_recv_queue; } ;
struct TYPE_4__ {int dot11AuthAlgrthm; } ;
struct adapter {TYPE_2__ recvpriv; TYPE_1__ securitypriv; struct sta_priv stapriv; } ;
typedef int __be16 ;


 int LLC_HEADER_SIZE ;
 int RT_TRACE (int ,int ,char*) ;
 int _drv_info_ ;
 int _module_rtl871x_recv_c_ ;
 int * get_recvframe_data (union recv_frame*) ;
 int memcpy (int *,int *,int) ;
 int ntohs (int ) ;
 int rtw_free_recvframe (union recv_frame*,int *) ;
 struct sta_info* rtw_get_stainfo (struct sta_priv*,int *) ;

union recv_frame *portctrl(struct adapter *adapter, union recv_frame *precv_frame)
{
 u8 *psta_addr = ((void*)0);
 u8 *ptr;
 uint auth_alg;
 struct recv_frame_hdr *pfhdr;
 struct sta_info *psta;
 struct sta_priv *pstapriv;
 union recv_frame *prtnframe;
 u16 ether_type = 0;
 u16 eapol_type = 0x888e;
 struct rx_pkt_attrib *pattrib;

 pstapriv = &adapter->stapriv;

 auth_alg = adapter->securitypriv.dot11AuthAlgrthm;

 ptr = get_recvframe_data(precv_frame);
 pfhdr = &precv_frame->u.hdr;
 pattrib = &pfhdr->attrib;
 psta_addr = pattrib->ta;

 prtnframe = ((void*)0);

 psta = rtw_get_stainfo(pstapriv, psta_addr);

 RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("########portctrl:adapter->securitypriv.dot11AuthAlgrthm =%d\n", adapter->securitypriv.dot11AuthAlgrthm));

 if (auth_alg == 2) {
  if ((psta) && (psta->ieee8021x_blocked)) {
   __be16 be_tmp;



   RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("########portctrl:psta->ieee8021x_blocked == 1\n"));

   prtnframe = precv_frame;


   ptr = ptr+pfhdr->attrib.hdrlen+pfhdr->attrib.iv_len+LLC_HEADER_SIZE;
   memcpy(&be_tmp, ptr, 2);
   ether_type = ntohs(be_tmp);

   if (ether_type == eapol_type)
    prtnframe = precv_frame;
   else {

    rtw_free_recvframe(precv_frame, &adapter->recvpriv.free_recv_queue);
    prtnframe = ((void*)0);
   }
  } else {


   RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("########portctrl:psta->ieee8021x_blocked == 0\n"));
   RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("portctrl:precv_frame->hdr.attrib.privacy =%x\n", precv_frame->u.hdr.attrib.privacy));

   if (pattrib->bdecrypted == 0)
    RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("portctrl:prxstat->decrypted =%x\n", pattrib->bdecrypted));

   prtnframe = precv_frame;
  }
 } else
  prtnframe = precv_frame;

 return prtnframe;
}
