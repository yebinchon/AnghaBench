
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ti_i2c_image_header {int Length; } ;
struct ti_i2c_firmware_rec {int Ver_Minor; int Ver_Major; } ;
struct ti_i2c_desc {scalar_t__ CheckSum; int Size; int Type; scalar_t__ Data; } ;
struct firmware {int * data; } ;
struct edgeport_fw_hdr {int minor_version; int major_version; } ;
typedef scalar_t__ __u8 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_DESC_TYPE_FIRMWARE_BLANK ;
 int cpu_to_le16 (int) ;
 int kfree (scalar_t__*) ;
 scalar_t__* kmalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int memcpy (scalar_t__*,int *,int ) ;
 int memset (scalar_t__*,int,int) ;

__attribute__((used)) static int build_i2c_fw_hdr(u8 *header, const struct firmware *fw)
{
 __u8 *buffer;
 int buffer_size;
 int i;
 __u8 cs = 0;
 struct ti_i2c_desc *i2c_header;
 struct ti_i2c_image_header *img_header;
 struct ti_i2c_firmware_rec *firmware_rec;
 struct edgeport_fw_hdr *fw_hdr = (struct edgeport_fw_hdr *)fw->data;
 buffer_size = (((1024 * 16) - 512 ) +
   sizeof(struct ti_i2c_firmware_rec));

 buffer = kmalloc(buffer_size, GFP_KERNEL);
 if (!buffer)
  return -ENOMEM;


 memset(buffer, 0xff, buffer_size);


 firmware_rec = (struct ti_i2c_firmware_rec *)buffer;

 firmware_rec->Ver_Major = fw_hdr->major_version;
 firmware_rec->Ver_Minor = fw_hdr->minor_version;


 img_header = (struct ti_i2c_image_header *)&fw->data[4];

 memcpy(buffer + sizeof(struct ti_i2c_firmware_rec),
  &fw->data[4 + sizeof(struct ti_i2c_image_header)],
  le16_to_cpu(img_header->Length));

 for (i=0; i < buffer_size; i++) {
  cs = (__u8)(cs + buffer[i]);
 }

 kfree(buffer);


 i2c_header = (struct ti_i2c_desc *)header;
 firmware_rec = (struct ti_i2c_firmware_rec*)i2c_header->Data;

 i2c_header->Type = I2C_DESC_TYPE_FIRMWARE_BLANK;
 i2c_header->Size = cpu_to_le16(buffer_size);
 i2c_header->CheckSum = cs;
 firmware_rec->Ver_Major = fw_hdr->major_version;
 firmware_rec->Ver_Minor = fw_hdr->minor_version;

 return 0;
}
