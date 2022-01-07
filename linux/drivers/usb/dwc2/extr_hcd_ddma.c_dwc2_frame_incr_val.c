
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dwc2_qh {scalar_t__ dev_speed; int host_interval; } ;


 scalar_t__ USB_SPEED_HIGH ;

__attribute__((used)) static u16 dwc2_frame_incr_val(struct dwc2_qh *qh)
{
 return qh->dev_speed == USB_SPEED_HIGH ?
        (qh->host_interval + 8 - 1) / 8 : qh->host_interval;
}
