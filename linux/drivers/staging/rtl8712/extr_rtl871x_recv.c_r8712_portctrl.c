
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int hdrlen; int * ta; } ;
struct recv_frame_hdr {TYPE_3__ attrib; } ;
struct TYPE_5__ {struct recv_frame_hdr hdr; } ;
union recv_frame {TYPE_1__ u; } ;
typedef int uint ;
typedef int u8 ;
typedef int u16 ;
struct sta_priv {int dummy; } ;
struct sta_info {scalar_t__ ieee8021x_blocked; } ;
struct TYPE_8__ {int free_recv_queue; } ;
struct TYPE_6__ {int AuthAlgrthm; } ;
struct _adapter {TYPE_4__ recvpriv; TYPE_2__ securitypriv; struct sta_priv stapriv; } ;


 int LLC_HEADER_SIZE ;
 int * get_recvframe_data (union recv_frame*) ;
 int get_unaligned_be16 (int *) ;
 int r8712_free_recvframe (union recv_frame*,int *) ;
 struct sta_info* r8712_get_stainfo (struct sta_priv*,int *) ;

union recv_frame *r8712_portctrl(struct _adapter *adapter,
     union recv_frame *precv_frame)
{
 u8 *psta_addr, *ptr;
 uint auth_alg;
 struct recv_frame_hdr *pfhdr;
 struct sta_info *psta;
 struct sta_priv *pstapriv;
 union recv_frame *prtnframe;
 u16 ether_type;

 pstapriv = &adapter->stapriv;
 ptr = get_recvframe_data(precv_frame);
 pfhdr = &precv_frame->u.hdr;
 psta_addr = pfhdr->attrib.ta;
 psta = r8712_get_stainfo(pstapriv, psta_addr);
 auth_alg = adapter->securitypriv.AuthAlgrthm;
 if (auth_alg == 2) {

  ptr = ptr + pfhdr->attrib.hdrlen + LLC_HEADER_SIZE;
  ether_type = get_unaligned_be16(ptr);

  if ((psta != ((void*)0)) && (psta->ieee8021x_blocked)) {



   if (ether_type == 0x888e) {
    prtnframe = precv_frame;
   } else {

    r8712_free_recvframe(precv_frame,
      &adapter->recvpriv.free_recv_queue);
    prtnframe = ((void*)0);
   }
  } else {




   prtnframe = precv_frame;

   if (ether_type == 0x888e) {

    prtnframe = precv_frame;
   }
  }
 } else {
  prtnframe = precv_frame;
 }
 return prtnframe;
}
