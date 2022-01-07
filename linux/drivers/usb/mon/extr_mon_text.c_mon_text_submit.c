
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;
struct mon_reader_text {int dummy; } ;


 int EINPROGRESS ;
 int mon_text_event (struct mon_reader_text*,struct urb*,char,int ) ;

__attribute__((used)) static void mon_text_submit(void *data, struct urb *urb)
{
 struct mon_reader_text *rp = data;
 mon_text_event(rp, urb, 'S', -EINPROGRESS);
}
