
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fh {int dummy; } ;
struct v4l2_event_subscription {int dummy; } ;


 int v4l2_event_unsubscribe (struct v4l2_fh*,struct v4l2_event_subscription const*) ;

__attribute__((used)) static int
uvc_v4l2_unsubscribe_event(struct v4l2_fh *fh,
      const struct v4l2_event_subscription *sub)
{
 return v4l2_event_unsubscribe(fh, sub);
}
