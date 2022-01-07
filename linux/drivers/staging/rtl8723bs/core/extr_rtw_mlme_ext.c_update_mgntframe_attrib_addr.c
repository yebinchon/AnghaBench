
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pkt_attrib {int ta; int ra; } ;
struct xmit_frame {scalar_t__ buf_addr; struct pkt_attrib attrib; } ;
struct adapter {int dummy; } ;


 int ETH_ALEN ;
 int GetAddr1Ptr (int *) ;
 int GetAddr2Ptr (int *) ;
 int TXDESC_OFFSET ;
 int memcpy (int ,int ,int ) ;

void update_mgntframe_attrib_addr(struct adapter *padapter, struct xmit_frame *pmgntframe)
{
 u8 *pframe;
 struct pkt_attrib *pattrib = &pmgntframe->attrib;

 pframe = (u8 *)(pmgntframe->buf_addr) + TXDESC_OFFSET;

 memcpy(pattrib->ra, GetAddr1Ptr(pframe), ETH_ALEN);
 memcpy(pattrib->ta, GetAddr2Ptr(pframe), ETH_ALEN);
}
