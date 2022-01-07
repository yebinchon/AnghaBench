
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
typedef int u8 ;
struct scsi_qla_host {int dummy; } ;
struct mrk_entry {scalar_t__ entry_status; int modifier; void* target; void* lun; int entry_type; } ;


 int BIT_7 ;
 int ENTER (char*) ;
 int LEAVE (char*) ;
 int MARKER_TYPE ;
 int qla1280_isp_cmd (struct scsi_qla_host*) ;
 scalar_t__ qla1280_req_pkt (struct scsi_qla_host*) ;

__attribute__((used)) static void
qla1280_marker(struct scsi_qla_host *ha, int bus, int id, int lun, u8 type)
{
 struct mrk_entry *pkt;

 ENTER("qla1280_marker");


 if ((pkt = (struct mrk_entry *) qla1280_req_pkt(ha))) {
  pkt->entry_type = MARKER_TYPE;
  pkt->lun = (uint8_t) lun;
  pkt->target = (uint8_t) (bus ? (id | BIT_7) : id);
  pkt->modifier = type;
  pkt->entry_status = 0;


  qla1280_isp_cmd(ha);
 }

 LEAVE("qla1280_marker");
}
