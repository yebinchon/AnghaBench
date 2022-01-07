
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvsi_priv {size_t inbuf_len; int * inbuf; int termno; scalar_t__ (* get_chars ) (int ,int *,size_t) ;} ;


 size_t HVSI_INBUF_SIZE ;
 int hvsi_check_packet (struct hvsi_priv*) ;
 scalar_t__ stub1 (int ,int *,size_t) ;

__attribute__((used)) static int hvsi_get_packet(struct hvsi_priv *pv)
{

 if (pv->inbuf_len < HVSI_INBUF_SIZE)
  pv->inbuf_len += pv->get_chars(pv->termno,
          &pv->inbuf[pv->inbuf_len],
          HVSI_INBUF_SIZE - pv->inbuf_len);




 if (pv->inbuf_len >= 4)
  return hvsi_check_packet(pv);
 return 0;
}
