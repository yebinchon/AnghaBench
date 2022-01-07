
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mon_text_ptr {scalar_t__ cnt; scalar_t__ limit; scalar_t__ pbuf; } ;
struct mon_reader_text {int dummy; } ;
struct mon_iso_desc {int status; int offset; int length; } ;
struct mon_event_text {int numdesc; struct mon_iso_desc* isodesc; } ;


 int ISODESC_MAX ;
 scalar_t__ snprintf (scalar_t__,scalar_t__,char*,int,...) ;

__attribute__((used)) static void mon_text_read_isodesc(struct mon_reader_text *rp,
 struct mon_text_ptr *p, const struct mon_event_text *ep)
{
 int ndesc;
 int i;
 const struct mon_iso_desc *dp;

 p->cnt += snprintf(p->pbuf + p->cnt, p->limit - p->cnt,
     " %d", ep->numdesc);
 ndesc = ep->numdesc;
 if (ndesc > ISODESC_MAX)
  ndesc = ISODESC_MAX;
 if (ndesc < 0)
  ndesc = 0;
 dp = ep->isodesc;
 for (i = 0; i < ndesc; i++) {
  p->cnt += snprintf(p->pbuf + p->cnt, p->limit - p->cnt,
      " %d:%u:%u", dp->status, dp->offset, dp->length);
  dp++;
 }
}
