
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_pct_register {int address; int reserved; int bit_offset; int bit_width; int space_id; int length; int descriptor; } ;
struct acpi_pct_register {int address; int reserved; int bit_offset; int bit_width; int space_id; int length; int descriptor; } ;



__attribute__((used)) static int xen_copy_pct_data(struct acpi_pct_register *pct,
        struct xen_pct_register *dst_pct)
{




 dst_pct->descriptor = pct->descriptor;
 dst_pct->length = pct->length;
 dst_pct->space_id = pct->space_id;
 dst_pct->bit_width = pct->bit_width;
 dst_pct->bit_offset = pct->bit_offset;
 dst_pct->reserved = pct->reserved;
 dst_pct->address = pct->address;
 return 0;
}
