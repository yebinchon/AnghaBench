
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_vendor_infoframe {int version; int length; int s3d_struct; int oui; int type; } ;


 int HDMI_3D_STRUCTURE_INVALID ;
 int HDMI_IEEE_OUI ;
 int HDMI_INFOFRAME_TYPE_VENDOR ;
 int memset (struct hdmi_vendor_infoframe*,int ,int) ;

int hdmi_vendor_infoframe_init(struct hdmi_vendor_infoframe *frame)
{
 memset(frame, 0, sizeof(*frame));

 frame->type = HDMI_INFOFRAME_TYPE_VENDOR;
 frame->version = 1;

 frame->oui = HDMI_IEEE_OUI;





 frame->s3d_struct = HDMI_3D_STRUCTURE_INVALID;
 frame->length = 4;

 return 0;
}
