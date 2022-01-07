
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct snic_icmnd_cmpl {int scsi_status; int resid; } ;
struct TYPE_7__ {int scsi_errs; int io_errs; int out_of_res; } ;
struct TYPE_6__ {int sgl_inval; int data_cnt_mismat; int io_aborted; int io_tmo; } ;
struct TYPE_5__ {int io_not_found; } ;
struct TYPE_8__ {TYPE_3__ fw; TYPE_2__ misc; TYPE_1__ io; } ;
struct snic {int shost; TYPE_4__ s_stats; } ;
struct scsi_cmnd {int result; } ;


 int CMD_FLAGS (struct scsi_cmnd*) ;
 int DID_ABORT ;
 int DID_ERROR ;
 int DID_NO_CONNECT ;
 int DID_REQUEUE ;
 int DID_TIME_OUT ;
 int SNIC_HOST_ERR (int ,char*,int ,int ) ;
 int SNIC_SCSI_DBG (int ,char*) ;
 int atomic64_inc (int *) ;
 int le32_to_cpu (int ) ;
 int scsi_set_resid (struct scsi_cmnd*,int ) ;
 int snic_io_status_to_str (int) ;

__attribute__((used)) static void
snic_process_io_failed_state(struct snic *snic,
        struct snic_icmnd_cmpl *icmnd_cmpl,
        struct scsi_cmnd *sc,
        u8 cmpl_stat)
{
 int res = 0;

 switch (cmpl_stat) {
 case 128:
  atomic64_inc(&snic->s_stats.misc.io_tmo);
  res = DID_TIME_OUT;
  break;

 case 142:
  atomic64_inc(&snic->s_stats.misc.io_aborted);
  res = DID_ABORT;
  break;

 case 140:
  atomic64_inc(&snic->s_stats.misc.data_cnt_mismat);
  scsi_set_resid(sc, le32_to_cpu(icmnd_cmpl->resid));
  res = DID_ERROR;
  break;

 case 132:
  atomic64_inc(&snic->s_stats.fw.out_of_res);
  res = DID_REQUEUE;
  break;

 case 134:
  atomic64_inc(&snic->s_stats.io.io_not_found);
  res = DID_ERROR;
  break;

 case 129:
  atomic64_inc(&snic->s_stats.misc.sgl_inval);
  res = DID_ERROR;
  break;

 case 137:
  atomic64_inc(&snic->s_stats.fw.io_errs);
  res = DID_ERROR;
  break;

 case 130:
  atomic64_inc(&snic->s_stats.fw.scsi_errs);
  break;

 case 133:
 case 139:
  res = DID_NO_CONNECT;
  break;

 case 136:
 case 135:
 case 131:
 case 141:
 case 138:
 default:
  SNIC_SCSI_DBG(snic->shost,
         "Invalid Hdr/Param or Req Not Supported or Cmnd Rejected or Device Offline. or Unknown\n");
  res = DID_ERROR;
  break;
 }

 SNIC_HOST_ERR(snic->shost, "fw returns failed status %s flags 0x%llx\n",
        snic_io_status_to_str(cmpl_stat), CMD_FLAGS(sc));


 sc->result = (res << 16) | icmnd_cmpl->scsi_status;
}
