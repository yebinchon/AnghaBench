
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct scsi_qla_host {int host_no; } ;
struct scsi_cmnd {scalar_t__ sense_buffer; int result; TYPE_1__* device; } ;
struct rsp_que {TYPE_2__* status_srb; } ;
struct TYPE_10__ {struct scsi_qla_host* vha; } ;
typedef TYPE_2__ srb_t ;
struct TYPE_9__ {int lun; int id; } ;


 struct scsi_cmnd* GET_CMD_SP (TYPE_2__*) ;
 scalar_t__ GET_FW_SENSE_LEN (TYPE_2__*) ;
 scalar_t__ SCSI_SENSE_BUFFERSIZE ;
 int SET_CMD_SENSE_LEN (TYPE_2__*,scalar_t__) ;
 int SET_CMD_SENSE_PTR (TYPE_2__*,scalar_t__) ;
 int SET_FW_SENSE_LEN (TYPE_2__*,scalar_t__) ;
 int memcpy (scalar_t__,int *,scalar_t__) ;
 int ql_dbg (scalar_t__,struct scsi_qla_host*,int,char*,scalar_t__,scalar_t__,scalar_t__,...) ;
 scalar_t__ ql_dbg_buffer ;
 scalar_t__ ql_dbg_io ;
 int ql_dump_buffer (scalar_t__,struct scsi_qla_host*,int,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void
qlafx00_handle_sense(srb_t *sp, uint8_t *sense_data, uint32_t par_sense_len,
       uint32_t sense_len, struct rsp_que *rsp, int res)
{
 struct scsi_qla_host *vha = sp->vha;
 struct scsi_cmnd *cp = GET_CMD_SP(sp);
 uint32_t track_sense_len;

 SET_FW_SENSE_LEN(sp, sense_len);

 if (sense_len >= SCSI_SENSE_BUFFERSIZE)
  sense_len = SCSI_SENSE_BUFFERSIZE;

 SET_CMD_SENSE_LEN(sp, sense_len);
 SET_CMD_SENSE_PTR(sp, cp->sense_buffer);
 track_sense_len = sense_len;

 if (sense_len > par_sense_len)
  sense_len = par_sense_len;

 memcpy(cp->sense_buffer, sense_data, sense_len);

 SET_FW_SENSE_LEN(sp, GET_FW_SENSE_LEN(sp) - sense_len);

 SET_CMD_SENSE_PTR(sp, cp->sense_buffer + sense_len);
 track_sense_len -= sense_len;
 SET_CMD_SENSE_LEN(sp, track_sense_len);

 ql_dbg(ql_dbg_io, vha, 0x304d,
     "sense_len=0x%x par_sense_len=0x%x track_sense_len=0x%x.\n",
     sense_len, par_sense_len, track_sense_len);
 if (GET_FW_SENSE_LEN(sp) > 0) {
  rsp->status_srb = sp;
  cp->result = res;
 }

 if (sense_len) {
  ql_dbg(ql_dbg_io + ql_dbg_buffer, vha, 0x3039,
      "Check condition Sense data, nexus%ld:%d:%llu cmd=%p.\n",
      sp->vha->host_no, cp->device->id, cp->device->lun,
      cp);
  ql_dump_buffer(ql_dbg_io + ql_dbg_buffer, vha, 0x3049,
      cp->sense_buffer, sense_len);
 }
}
