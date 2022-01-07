
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvsi_priv {size_t inbuf_cur; int inbuf_len; int termno; int established; int * inbuf; scalar_t__ inbuf_pktlen; int opened; } ;


 int ENXIO ;
 int EPIPE ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ hvsi_get_packet (struct hvsi_priv*) ;
 int memcpy (char*,int *,unsigned int) ;
 int memmove (int *,int *,int) ;
 unsigned int min (int,int) ;
 int pr_devel (char*,int ) ;

int hvsilib_get_chars(struct hvsi_priv *pv, char *buf, int count)
{
 unsigned int tries, read = 0;

 if (WARN_ON(!pv))
  return -ENXIO;






 if (!pv->opened)
  return 0;




 for (tries = 1; count && tries < 2; tries++) {

  if (pv->inbuf_pktlen) {
   unsigned int l = min(count, (int)pv->inbuf_pktlen);
   memcpy(&buf[read], &pv->inbuf[pv->inbuf_cur], l);
   pv->inbuf_cur += l;
   pv->inbuf_pktlen -= l;
   count -= l;
   read += l;
  }
  if (count == 0)
   break;


  if (pv->inbuf_cur) {
   pv->inbuf_len -= pv->inbuf_cur;
   memmove(pv->inbuf, &pv->inbuf[pv->inbuf_cur],
    pv->inbuf_len);
   pv->inbuf_cur = 0;
  }


  if (hvsi_get_packet(pv))
   tries--;
 }
 if (!pv->established) {
  pr_devel("HVSI@%x: returning -EPIPE\n", pv->termno);
  return -EPIPE;
 }
 return read;
}
