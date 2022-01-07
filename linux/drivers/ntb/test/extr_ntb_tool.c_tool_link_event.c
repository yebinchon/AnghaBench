
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tool_ctx {int link_wq; TYPE_1__* ntb; } ;
typedef enum ntb_width { ____Placeholder_ntb_width } ntb_width ;
typedef enum ntb_speed { ____Placeholder_ntb_speed } ntb_speed ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,char*,int,int) ;
 int ntb_link_is_up (TYPE_1__*,int*,int*) ;
 int wake_up (int *) ;

__attribute__((used)) static void tool_link_event(void *ctx)
{
 struct tool_ctx *tc = ctx;
 enum ntb_speed speed;
 enum ntb_width width;
 int up;

 up = ntb_link_is_up(tc->ntb, &speed, &width);

 dev_dbg(&tc->ntb->dev, "link is %s speed %d width %d\n",
  up ? "up" : "down", speed, width);

 wake_up(&tc->link_wq);
}
