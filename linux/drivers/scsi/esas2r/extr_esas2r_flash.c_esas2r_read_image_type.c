
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct esas2r_efi_image {int machine_type; } ;
struct esas2r_boot_image {scalar_t__ signature; int header_offset; } ;
struct esas2r_boot_header {scalar_t__ code_type; scalar_t__ indicator; int image_length; } ;
struct esas2r_adapter {int image_type; } ;
typedef int bytes ;


 scalar_t__ CODE_TYPE_EFI ;
 scalar_t__ CODE_TYPE_PC ;




 int FLS_LENGTH_BOOT ;
 int FLS_OFFSET_BOOT ;
 scalar_t__ INDICATOR_LAST ;
 scalar_t__ cpu_to_le16 (int) ;
 int esas2r_read_flash_block (struct esas2r_adapter*,int *,int,int) ;
 int le16_to_cpu (int ) ;
 int strcpy (int ,char*) ;

bool esas2r_read_image_type(struct esas2r_adapter *a)
{
 u8 bytes[256];
 struct esas2r_boot_image *bi;
 struct esas2r_boot_header *bh;
 u32 sz;
 u32 len;
 u32 offset;


 sz = sizeof(bytes);
 len = FLS_LENGTH_BOOT;
 offset = 0;

 while (1) {
  if (!esas2r_read_flash_block(a, bytes, FLS_OFFSET_BOOT +
          offset,
          sz))
   goto invalid_rev;

  bi = (struct esas2r_boot_image *)bytes;
  bh = (struct esas2r_boot_header *)((u8 *)bi +
         le16_to_cpu(
          bi->header_offset));
  if (bi->signature != cpu_to_le16(0xAA55))
   goto invalid_rev;

  if (bh->code_type == CODE_TYPE_PC) {
   strcpy(a->image_type, "BIOS");

   return 1;
  } else if (bh->code_type == CODE_TYPE_EFI) {
   struct esas2r_efi_image *ei;





   ei = (struct esas2r_efi_image *)bytes;

   switch (le16_to_cpu(ei->machine_type)) {
   case 130:
    strcpy(a->image_type, "EFI 32-bit");
    return 1;

   case 129:
    strcpy(a->image_type, "EFI itanium");
    return 1;

   case 128:
    strcpy(a->image_type, "EFI 64-bit");
    return 1;

   case 131:
    strcpy(a->image_type, "EFI EBC");
    return 1;

   default:
    goto invalid_rev;
   }
  } else {
   u32 thislen;


   thislen = (u32)le16_to_cpu(bh->image_length) * 512;
   if (thislen == 0
       || thislen + offset > len
       || bh->indicator == INDICATOR_LAST)
    break;

   offset += thislen;
  }
 }

invalid_rev:
 strcpy(a->image_type, "no boot images");
 return 0;
}
