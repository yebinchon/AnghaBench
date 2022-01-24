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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct esas2r_boot_image {int header_offset; scalar_t__ signature; } ;
struct esas2r_boot_header {char* signature; int struct_length; int* class_code; scalar_t__ code_type; } ;

/* Variables and functions */
 scalar_t__ CODE_TYPE_EFI ; 
 scalar_t__ CODE_TYPE_OPEN ; 
 scalar_t__ CODE_TYPE_PC ; 
 int FUNC0 (int) ; 

__attribute__((used)) static u8 FUNC1(u8 *boot_img, u32 length)
{
	struct esas2r_boot_image *bi = (struct esas2r_boot_image *)boot_img;
	u16 hdroffset = FUNC0(bi->header_offset);
	struct esas2r_boot_header *bh;

	if (bi->signature != FUNC0(0xaa55)
	    || (long)hdroffset >
	    (long)(65536L - sizeof(struct esas2r_boot_header))
	    || (hdroffset & 3)
	    || (hdroffset < sizeof(struct esas2r_boot_image))
	    || ((u32)hdroffset + sizeof(struct esas2r_boot_header) > length))
		return 0xff;

	bh = (struct esas2r_boot_header *)((char *)bi + hdroffset);

	if (bh->signature[0] != 'P'
	    || bh->signature[1] != 'C'
	    || bh->signature[2] != 'I'
	    || bh->signature[3] != 'R'
	    || FUNC0(bh->struct_length) <
	    (u16)sizeof(struct esas2r_boot_header)
	    || bh->class_code[2] != 0x01
	    || bh->class_code[1] != 0x04
	    || bh->class_code[0] != 0x00
	    || (bh->code_type != CODE_TYPE_PC
		&& bh->code_type != CODE_TYPE_OPEN
		&& bh->code_type != CODE_TYPE_EFI))
		return 0xff;

	return bh->code_type;
}