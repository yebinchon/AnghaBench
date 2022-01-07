
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct esas2r_flash_img {struct esas2r_component_header* cmp_hdr; } ;
struct esas2r_efi_image {int header_offset; } ;
struct esas2r_component_header {int length; int image_offset; } ;
struct esas2r_boot_header {int image_length; int device_id; } ;
struct esas2r_adapter {TYPE_1__* pcid; } ;
struct TYPE_2__ {int device; } ;


 size_t CH_IT_EFI ;
 int cpu_to_le16 (int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static void fix_efi(struct esas2r_adapter *a, struct esas2r_flash_img *fi)
{
 struct esas2r_component_header *ch = &fi->cmp_hdr[CH_IT_EFI];
 u32 len = ch->length;
 u32 offset = ch->image_offset;
 struct esas2r_efi_image *ei;
 struct esas2r_boot_header *bh;

 while (len) {
  u32 thislen;

  ei = (struct esas2r_efi_image *)((u8 *)fi + offset);
  bh = (struct esas2r_boot_header *)((u8 *)ei +
         le16_to_cpu(
          ei->header_offset));
  bh->device_id = cpu_to_le16(a->pcid->device);
  thislen = (u32)le16_to_cpu(bh->image_length) * 512;

  if (thislen > len)
   break;

  len -= thislen;
  offset += thislen;
 }
}
