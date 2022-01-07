
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {TYPE_1__ integer; } ;
struct hpx_type3 {int reg_mask_or; int reg_mask_and; int reg_offset; int match_value; int match_mask_and; int match_offset; int dvsec_rev; int dvsec_id; int pci_exp_vendor_id; int pci_exp_cap_ver; int pci_exp_cap_id; int config_space_location; int function_type; int device_type; } ;



__attribute__((used)) static void parse_hpx3_register(struct hpx_type3 *hpx3_reg,
    union acpi_object *reg_fields)
{
 hpx3_reg->device_type = reg_fields[0].integer.value;
 hpx3_reg->function_type = reg_fields[1].integer.value;
 hpx3_reg->config_space_location = reg_fields[2].integer.value;
 hpx3_reg->pci_exp_cap_id = reg_fields[3].integer.value;
 hpx3_reg->pci_exp_cap_ver = reg_fields[4].integer.value;
 hpx3_reg->pci_exp_vendor_id = reg_fields[5].integer.value;
 hpx3_reg->dvsec_id = reg_fields[6].integer.value;
 hpx3_reg->dvsec_rev = reg_fields[7].integer.value;
 hpx3_reg->match_offset = reg_fields[8].integer.value;
 hpx3_reg->match_mask_and = reg_fields[9].integer.value;
 hpx3_reg->match_value = reg_fields[10].integer.value;
 hpx3_reg->reg_offset = reg_fields[11].integer.value;
 hpx3_reg->reg_mask_and = reg_fields[12].integer.value;
 hpx3_reg->reg_mask_or = reg_fields[13].integer.value;
}
