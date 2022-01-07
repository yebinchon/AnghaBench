
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visorchannel {int dummy; } ;
struct visor_vbus_headerinfo {int struct_bytes; int device_info_struct_bytes; } ;
struct visor_vbus_deviceinfo {int dummy; } ;
struct visor_vbus_channel {int dummy; } ;
struct device {int dummy; } ;
struct channel_header {int dummy; } ;


 int EINVAL ;
 int VISOR_CHANNEL_SIGNATURE ;
 int VISOR_VBUS_CHANNEL_VERSIONID ;
 int visor_check_channel (int ,struct device*,int *,char*,int,int ,int ) ;
 int visor_vbus_channel_guid ;
 int visorchannel_get_header (struct visorchannel*) ;
 int visorchannel_read (struct visorchannel*,int,struct visor_vbus_headerinfo*,int) ;

__attribute__((used)) static int get_vbus_header_info(struct visorchannel *chan,
    struct device *dev,
    struct visor_vbus_headerinfo *hdr_info)
{
 int err;

 if (!visor_check_channel(visorchannel_get_header(chan),
     dev,
     &visor_vbus_channel_guid,
     "vbus",
     sizeof(struct visor_vbus_channel),
     VISOR_VBUS_CHANNEL_VERSIONID,
     VISOR_CHANNEL_SIGNATURE))
  return -EINVAL;

 err = visorchannel_read(chan, sizeof(struct channel_header), hdr_info,
    sizeof(*hdr_info));
 if (err < 0)
  return err;
 if (hdr_info->struct_bytes < sizeof(struct visor_vbus_headerinfo))
  return -EINVAL;
 if (hdr_info->device_info_struct_bytes <
     sizeof(struct visor_vbus_deviceinfo))
  return -EINVAL;
 return 0;
}
