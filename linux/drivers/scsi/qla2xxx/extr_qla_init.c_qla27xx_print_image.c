
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int dummy; } ;
struct qla27xx_image_status {int signature; int checksum; int bitmap; int ver_minor; int ver_major; int generation; int image_status_mask; } ;


 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,char*,char*,int ,int ,int ,int ,int ,int ,int ) ;
 int ql_dbg_init ;

__attribute__((used)) static void
qla27xx_print_image(struct scsi_qla_host *vha, char *name,
    struct qla27xx_image_status *image_status)
{
 ql_dbg(ql_dbg_init, vha, 0x018b,
     "%s %s: mask=%#02x gen=%#04x ver=%u.%u map=%#01x sum=%#08x sig=%#08x\n",
     name, "status",
     image_status->image_status_mask,
     le16_to_cpu(image_status->generation),
     image_status->ver_major,
     image_status->ver_minor,
     image_status->bitmap,
     le32_to_cpu(image_status->checksum),
     le32_to_cpu(image_status->signature));
}
