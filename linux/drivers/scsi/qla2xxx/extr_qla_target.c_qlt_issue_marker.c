
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {scalar_t__ marker_needed; int vp_idx; } ;


 int QLA_SUCCESS ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,int ) ;
 int ql_dbg_tgt ;
 int qla2x00_issue_marker (struct scsi_qla_host*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int qlt_issue_marker(struct scsi_qla_host *vha, int vha_locked)
{

 if (unlikely(vha->marker_needed != 0)) {
  int rc = qla2x00_issue_marker(vha, vha_locked);

  if (rc != QLA_SUCCESS) {
   ql_dbg(ql_dbg_tgt, vha, 0xe03d,
       "qla_target(%d): issue_marker() failed\n",
       vha->vp_idx);
  }
  return rc;
 }
 return QLA_SUCCESS;
}
