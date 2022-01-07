
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct pkt_attrib {scalar_t__ encrypt; int icv_len; scalar_t__ bswenc; scalar_t__ pktlen; scalar_t__ iv_len; scalar_t__ hdrlen; } ;


 scalar_t__ SNAP_SIZE ;
 scalar_t__ _TKIP_ ;

u32 rtw_calculate_wlan_pkt_size_by_attribue(struct pkt_attrib *pattrib)
{
 u32 len = 0;

 len = pattrib->hdrlen + pattrib->iv_len;
 len += SNAP_SIZE + sizeof(u16);
 len += pattrib->pktlen;
 if (pattrib->encrypt == _TKIP_)
  len += 8;
 len += ((pattrib->bswenc) ? pattrib->icv_len : 0);

 return len;
}
