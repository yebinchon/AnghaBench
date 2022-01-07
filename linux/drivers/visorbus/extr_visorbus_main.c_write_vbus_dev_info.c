
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visorchannel {int dummy; } ;
struct visor_vbus_headerinfo {int dev_info_offset; unsigned int device_info_struct_bytes; } ;
struct visor_vbus_deviceinfo {int dummy; } ;
struct channel_header {int dummy; } ;


 int visorchannel_write (struct visorchannel*,int,struct visor_vbus_deviceinfo*,int) ;

__attribute__((used)) static void write_vbus_dev_info(struct visorchannel *chan,
    struct visor_vbus_headerinfo *hdr_info,
    struct visor_vbus_deviceinfo *info,
    unsigned int devix)
{
 int off;

 if (hdr_info->dev_info_offset == 0)
  return;
 off = (sizeof(struct channel_header) + hdr_info->dev_info_offset) +
       (hdr_info->device_info_struct_bytes * devix);
 visorchannel_write(chan, off, info, sizeof(*info));
}
