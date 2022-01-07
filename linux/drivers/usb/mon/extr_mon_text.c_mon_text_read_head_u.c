
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mon_text_ptr {scalar_t__ cnt; scalar_t__ limit; scalar_t__ pbuf; } ;
struct mon_reader_text {int dummy; } ;
struct mon_event_text {int xfertype; int epnum; int devnum; int busnum; int type; int tstamp; int id; scalar_t__ is_in; } ;





 scalar_t__ snprintf (scalar_t__,scalar_t__,char*,int ,int ,int ,char,char,int ,int ,int ) ;

__attribute__((used)) static void mon_text_read_head_u(struct mon_reader_text *rp,
 struct mon_text_ptr *p, const struct mon_event_text *ep)
{
 char udir, utype;

 udir = (ep->is_in ? 'i' : 'o');
 switch (ep->xfertype) {
 case 128: utype = 'Z'; break;
 case 129: utype = 'I'; break;
 case 130: utype = 'C'; break;
 default: utype = 'B';
 }
 p->cnt += snprintf(p->pbuf + p->cnt, p->limit - p->cnt,
     "%lx %u %c %c%c:%d:%03u:%u",
     ep->id, ep->tstamp, ep->type,
     utype, udir, ep->busnum, ep->devnum, ep->epnum);
}
