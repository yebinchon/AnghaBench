
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct pkt_attrib {scalar_t__ encrypt; int icv_len; scalar_t__ bswenc; scalar_t__ pktlen; scalar_t__ iv_len; scalar_t__ hdrlen; } ;
struct xmit_frame {struct pkt_attrib attrib; } ;


 scalar_t__ SNAP_SIZE ;
 scalar_t__ _TKIP_ ;

__attribute__((used)) static u32 xmitframe_need_length(struct xmit_frame *pxmitframe)
{
 struct pkt_attrib *pattrib = &pxmitframe->attrib;

 u32 len;


 len = pattrib->hdrlen + pattrib->iv_len +
  SNAP_SIZE + sizeof(u16) +
  pattrib->pktlen +
  ((pattrib->bswenc) ? pattrib->icv_len : 0);

 if (pattrib->encrypt == _TKIP_)
  len += 8;

 return len;
}
