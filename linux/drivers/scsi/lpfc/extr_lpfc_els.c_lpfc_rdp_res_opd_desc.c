
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct lpfc_vport {int dummy; } ;
struct TYPE_2__ {int date; int revision; int serial_number; int model_number; int vendor_name; } ;
struct fc_rdp_opd_sfp_desc {void* length; TYPE_1__ opd_info; void* tag; } ;


 int RDP_OPD_DESC_TAG ;
 size_t SSF_DATE_CODE ;
 size_t SSF_VENDOR_NAME ;
 size_t SSF_VENDOR_PN ;
 size_t SSF_VENDOR_REV ;
 size_t SSF_VENDOR_SN ;
 void* cpu_to_be32 (int) ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static uint32_t
lpfc_rdp_res_opd_desc(struct fc_rdp_opd_sfp_desc *desc,
        uint8_t *page_a0, struct lpfc_vport *vport)
{
 desc->tag = cpu_to_be32(RDP_OPD_DESC_TAG);
 memcpy(desc->opd_info.vendor_name, &page_a0[SSF_VENDOR_NAME], 16);
 memcpy(desc->opd_info.model_number, &page_a0[SSF_VENDOR_PN], 16);
 memcpy(desc->opd_info.serial_number, &page_a0[SSF_VENDOR_SN], 16);
 memcpy(desc->opd_info.revision, &page_a0[SSF_VENDOR_REV], 4);
 memcpy(desc->opd_info.date, &page_a0[SSF_DATE_CODE], 8);
 desc->length = cpu_to_be32(sizeof(desc->opd_info));
 return sizeof(struct fc_rdp_opd_sfp_desc);
}
