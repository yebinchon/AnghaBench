
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_qla_host {int dummy; } ;
struct qla4_8xxx_minidump_template_hdr {int dummy; } ;


 int BIT_0 ;
 int KERN_INFO ;
 int QLA8022_TEMPLATE_CAP_OFFSET ;
 int QLA83XX_TEMPLATE_CAP_OFFSET ;
 scalar_t__ is_qla8022 (struct scsi_qla_host*) ;
 int le32_to_cpu (int ) ;
 int ql4_printk (int ,struct scsi_qla_host*,char*,int ) ;

__attribute__((used)) static int qla4_80xx_is_minidump_dma_capable(struct scsi_qla_host *ha,
  struct qla4_8xxx_minidump_template_hdr *md_hdr)
{
 int offset = (is_qla8022(ha)) ? QLA8022_TEMPLATE_CAP_OFFSET :
     QLA83XX_TEMPLATE_CAP_OFFSET;
 int rval = 1;
 uint32_t *cap_offset;

 cap_offset = (uint32_t *)((char *)md_hdr + offset);

 if (!(le32_to_cpu(*cap_offset) & BIT_0)) {
  ql4_printk(KERN_INFO, ha, "PEX DMA Not supported %d\n",
      *cap_offset);
  rval = 0;
 }

 return rval;
}
