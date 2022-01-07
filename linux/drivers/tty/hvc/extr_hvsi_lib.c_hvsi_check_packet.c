
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hvsi_priv {int* inbuf; int inbuf_len; int inbuf_pktlen; int inbuf_cur; int termno; } ;






 int hvsi_got_control (struct hvsi_priv*) ;
 int hvsi_got_query (struct hvsi_priv*) ;
 int hvsi_got_response (struct hvsi_priv*) ;
 int memmove (int*,int*,int) ;
 int pr_devel (char*,int ,int,int) ;

__attribute__((used)) static int hvsi_check_packet(struct hvsi_priv *pv)
{
 u8 len, type;




 if (pv->inbuf[0] < 0xfc) {
  pv->inbuf_len = pv->inbuf_pktlen = 0;
  return 0;
 }
 type = pv->inbuf[0];
 len = pv->inbuf[1];


 if (pv->inbuf_len < len)
  return 0;

 pr_devel("HVSI@%x: Got packet type %x len %d bytes:\n",
   pv->termno, type, len);


 switch(type) {
 case 130:
  pv->inbuf_pktlen = len - 4;
  pv->inbuf_cur = 4;
  return 1;
 case 131:
  hvsi_got_control(pv);
  break;
 case 129:
  hvsi_got_query(pv);
  break;
 case 128:
  hvsi_got_response(pv);
  break;
 }


 pv->inbuf_len -= len;
 memmove(pv->inbuf, &pv->inbuf[len], pv->inbuf_len);
 return 1;
}
