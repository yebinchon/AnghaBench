
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct scsi_qla_host {int dummy; } ;
struct qla4_83xx_rmw {int dummy; } ;
struct qla4_83xx_reset_entry_hdr {scalar_t__ count; scalar_t__ delay; } ;
struct qla4_83xx_entry {int arg2; int arg1; } ;


 int qla4_83xx_rmw_crb_reg (struct scsi_qla_host*,int ,int ,struct qla4_83xx_rmw*) ;
 int udelay (scalar_t__) ;

__attribute__((used)) static void qla4_83xx_read_modify_write(struct scsi_qla_host *ha,
     struct qla4_83xx_reset_entry_hdr *p_hdr)
{
 struct qla4_83xx_entry *p_entry;
 struct qla4_83xx_rmw *p_rmw_hdr;
 uint32_t i;

 p_rmw_hdr = (struct qla4_83xx_rmw *)
      ((char *)p_hdr + sizeof(struct qla4_83xx_reset_entry_hdr));
 p_entry = (struct qla4_83xx_entry *)
    ((char *)p_rmw_hdr + sizeof(struct qla4_83xx_rmw));

 for (i = 0; i < p_hdr->count; i++, p_entry++) {
  qla4_83xx_rmw_crb_reg(ha, p_entry->arg1, p_entry->arg2,
          p_rmw_hdr);
  if (p_hdr->delay)
   udelay((uint32_t)(p_hdr->delay));
 }
}
