
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct ufx_data {TYPE_3__* info; } ;
struct TYPE_5__ {int line_length; scalar_t__ smem_start; } ;
struct TYPE_4__ {int xres; int yres; } ;
struct TYPE_6__ {TYPE_2__ fix; TYPE_1__ var; } ;


 size_t ALIGN (int,int) ;
 int BPP ;
 int BUG_ON (int) ;
 scalar_t__ cpu_to_le16 (int) ;
 int cpu_to_le32 (size_t) ;
 int memcpy (scalar_t__*,char*,int) ;

__attribute__((used)) static void ufx_raw_rect(struct ufx_data *dev, u16 *cmd, int x, int y,
 int width, int height)
{
 size_t packed_line_len = ALIGN((width * 2), 4);
 size_t packed_rect_len = packed_line_len * height;
 int line;

 BUG_ON(!dev);
 BUG_ON(!dev->info);


 *((u32 *)&cmd[0]) = cpu_to_le32(0x01);


 *((u32 *)&cmd[2]) = cpu_to_le32(packed_rect_len + 16);

 cmd[4] = cpu_to_le16(x);
 cmd[5] = cpu_to_le16(y);
 cmd[6] = cpu_to_le16(width);
 cmd[7] = cpu_to_le16(height);


 *((u32 *)&cmd[8]) = cpu_to_le32(0);


 cmd[10] = cpu_to_le16(0x4000 | dev->info->var.xres);


 cmd[11] = cpu_to_le16(dev->info->var.yres);


 for (line = 0; line < height; line++) {
  const int line_offset = dev->info->fix.line_length * (y + line);
  const int byte_offset = line_offset + (x * BPP);
  memcpy(&cmd[(24 + (packed_line_len * line)) / 2],
   (char *)dev->info->fix.smem_start + byte_offset, width * BPP);
 }
}
