
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pkt_attrib {int qsel; } ;
struct xmit_frame {struct pkt_attrib attrib; } ;


 int BCN_QUEUE_INX ;
 int BE_QUEUE_INX ;
 int BK_QUEUE_INX ;
 int HIGH_QUEUE_INX ;
 int MGT_QUEUE_INX ;
 int VI_QUEUE_INX ;
 int VO_QUEUE_INX ;

u32 rtw_get_ff_hwaddr(struct xmit_frame *pxmitframe)
{
 u32 addr;
 struct pkt_attrib *pattrib = &pxmitframe->attrib;

 switch (pattrib->qsel) {
 case 0:
 case 3:
  addr = BE_QUEUE_INX;
  break;
 case 1:
 case 2:
  addr = BK_QUEUE_INX;
  break;
 case 4:
 case 5:
  addr = VI_QUEUE_INX;
  break;
 case 6:
 case 7:
  addr = VO_QUEUE_INX;
  break;
 case 0x10:
  addr = BCN_QUEUE_INX;
  break;
 case 0x11:
  addr = HIGH_QUEUE_INX;
  break;
 case 0x12:
 default:
  addr = MGT_QUEUE_INX;
  break;
 }

 return addr;
}
