
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_vendor_infoframe {int length; } ;


 int hdmi_vendor_infoframe_check_only (struct hdmi_vendor_infoframe*) ;
 int hdmi_vendor_infoframe_length (struct hdmi_vendor_infoframe*) ;

int hdmi_vendor_infoframe_check(struct hdmi_vendor_infoframe *frame)
{
 frame->length = hdmi_vendor_infoframe_length(frame);

 return hdmi_vendor_infoframe_check_only(frame);
}
