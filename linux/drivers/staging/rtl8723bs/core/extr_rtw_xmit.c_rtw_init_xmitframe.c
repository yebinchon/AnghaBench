
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xmit_frame {int pg_num; int agg_num; scalar_t__ ack_report; int frame_tag; int attrib; int * pxmitbuf; int * buf_addr; } ;
struct pkt_attrib {int dummy; } ;


 int DATA_FRAMETAG ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void rtw_init_xmitframe(struct xmit_frame *pxframe)
{
 if (pxframe) {
  pxframe->buf_addr = ((void*)0);
  pxframe->pxmitbuf = ((void*)0);

  memset(&pxframe->attrib, 0, sizeof(struct pkt_attrib));


  pxframe->frame_tag = DATA_FRAMETAG;

  pxframe->pg_num = 1;
  pxframe->agg_num = 1;
  pxframe->ack_report = 0;
 }
}
