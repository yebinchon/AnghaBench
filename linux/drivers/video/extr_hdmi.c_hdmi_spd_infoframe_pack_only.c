
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct hdmi_spd_infoframe {size_t length; size_t type; size_t version; size_t sdi; int product; int vendor; } ;
typedef int ssize_t ;


 int ENOSPC ;
 size_t HDMI_INFOFRAME_HEADER_SIZE ;
 int hdmi_infoframe_set_checksum (void*,size_t) ;
 int hdmi_spd_infoframe_check_only (struct hdmi_spd_infoframe const*) ;
 int memcpy (size_t*,int ,int) ;
 int memset (void*,int ,size_t) ;

ssize_t hdmi_spd_infoframe_pack_only(const struct hdmi_spd_infoframe *frame,
         void *buffer, size_t size)
{
 u8 *ptr = buffer;
 size_t length;
 int ret;

 ret = hdmi_spd_infoframe_check_only(frame);
 if (ret)
  return ret;

 length = HDMI_INFOFRAME_HEADER_SIZE + frame->length;

 if (size < length)
  return -ENOSPC;

 memset(buffer, 0, size);

 ptr[0] = frame->type;
 ptr[1] = frame->version;
 ptr[2] = frame->length;
 ptr[3] = 0;


 ptr += HDMI_INFOFRAME_HEADER_SIZE;

 memcpy(ptr, frame->vendor, sizeof(frame->vendor));
 memcpy(ptr + 8, frame->product, sizeof(frame->product));

 ptr[24] = frame->sdi;

 hdmi_infoframe_set_checksum(buffer, length);

 return length;
}
