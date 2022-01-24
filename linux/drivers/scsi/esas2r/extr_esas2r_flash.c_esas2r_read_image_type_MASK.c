#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct esas2r_efi_image {int /*<<< orphan*/  machine_type; } ;
struct esas2r_boot_image {scalar_t__ signature; int /*<<< orphan*/  header_offset; } ;
struct esas2r_boot_header {scalar_t__ code_type; scalar_t__ indicator; int /*<<< orphan*/  image_length; } ;
struct esas2r_adapter {int /*<<< orphan*/  image_type; } ;
typedef  int /*<<< orphan*/  bytes ;

/* Variables and functions */
 scalar_t__ CODE_TYPE_EFI ; 
 scalar_t__ CODE_TYPE_PC ; 
#define  EFI_MACHINE_EBC 131 
#define  EFI_MACHINE_IA32 130 
#define  EFI_MACHINE_IA64 129 
#define  EFI_MACHINE_X64 128 
 int FLS_LENGTH_BOOT ; 
 int FLS_OFFSET_BOOT ; 
 scalar_t__ INDICATOR_LAST ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct esas2r_adapter*,int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

bool FUNC4(struct esas2r_adapter *a)
{
	u8 bytes[256];
	struct esas2r_boot_image *bi;
	struct esas2r_boot_header *bh;
	u32 sz;
	u32 len;
	u32 offset;

	/* Start at the base of the boot images and look for a valid image */
	sz = sizeof(bytes);
	len = FLS_LENGTH_BOOT;
	offset = 0;

	while (true) {
		if (!FUNC1(a, bytes, FLS_OFFSET_BOOT +
					     offset,
					     sz))
			goto invalid_rev;

		bi = (struct esas2r_boot_image *)bytes;
		bh = (struct esas2r_boot_header *)((u8 *)bi +
						   FUNC2(
							   bi->header_offset));
		if (bi->signature != FUNC0(0xAA55))
			goto invalid_rev;

		if (bh->code_type == CODE_TYPE_PC) {
			FUNC3(a->image_type, "BIOS");

			return true;
		} else if (bh->code_type == CODE_TYPE_EFI) {
			struct esas2r_efi_image *ei;

			/*
			 * So we have an EFI image.  There are several types
			 * so see which architecture we have.
			 */
			ei = (struct esas2r_efi_image *)bytes;

			switch (FUNC2(ei->machine_type)) {
			case EFI_MACHINE_IA32:
				FUNC3(a->image_type, "EFI 32-bit");
				return true;

			case EFI_MACHINE_IA64:
				FUNC3(a->image_type, "EFI itanium");
				return true;

			case EFI_MACHINE_X64:
				FUNC3(a->image_type, "EFI 64-bit");
				return true;

			case EFI_MACHINE_EBC:
				FUNC3(a->image_type, "EFI EBC");
				return true;

			default:
				goto invalid_rev;
			}
		} else {
			u32 thislen;

			/* jump to the next image */
			thislen = (u32)FUNC2(bh->image_length) * 512;
			if (thislen == 0
			    || thislen + offset > len
			    || bh->indicator == INDICATOR_LAST)
				break;

			offset += thislen;
		}
	}

invalid_rev:
	FUNC3(a->image_type, "no boot images");
	return false;
}