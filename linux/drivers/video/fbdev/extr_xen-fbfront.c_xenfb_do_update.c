
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int x; int y; int width; int height; } ;
union xenfb_out_event {TYPE_1__ update; int type; } ;
struct xenfb_info {int dummy; } ;
typedef int event ;


 int XENFB_TYPE_UPDATE ;
 int memset (union xenfb_out_event*,int ,int) ;
 int xenfb_send_event (struct xenfb_info*,union xenfb_out_event*) ;

__attribute__((used)) static void xenfb_do_update(struct xenfb_info *info,
       int x, int y, int w, int h)
{
 union xenfb_out_event event;

 memset(&event, 0, sizeof(event));
 event.type = XENFB_TYPE_UPDATE;
 event.update.x = x;
 event.update.y = y;
 event.update.width = w;
 event.update.height = h;


 xenfb_send_event(info, &event);
}
