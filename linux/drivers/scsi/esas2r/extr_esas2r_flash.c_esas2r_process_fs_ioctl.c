
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct esas2r_sg_context {scalar_t__ length; } ;
struct esas2r_request {TYPE_4__* vrq; struct esas2r_ioctl_fs* interrupt_cx; int interrupt_cb; } ;
struct esas2r_ioctlfs_command {int command; int flash_addr; int checksum; int length; } ;
struct esas2r_ioctl_fs {scalar_t__ version; scalar_t__ adap_type; scalar_t__ driver_ver; void* status; int driver_error; struct esas2r_ioctlfs_command command; } ;
struct esas2r_adapter {int flags; TYPE_1__* pcid; } ;
struct TYPE_6__ {int sge; } ;
struct TYPE_7__ {TYPE_2__ data; } ;
struct TYPE_8__ {TYPE_3__ flash; } ;
struct TYPE_5__ {scalar_t__ device; } ;


 int AF_DEGRADED_MODE ;
 int ARRAY_SIZE (int*) ;
 scalar_t__ ATTO_DID_MV_88RC9580 ;
 scalar_t__ ATTO_DID_MV_88RC9580TL ;
 scalar_t__ ATTO_DID_MV_88RC9580TS ;
 scalar_t__ ATTO_DID_MV_88RC9580TSE ;
 void* ATTO_STS_DEGRADED ;
 void* ATTO_STS_FAILED ;
 void* ATTO_STS_INV_ADAPTER ;
 void* ATTO_STS_INV_DRVR_VER ;
 void* ATTO_STS_INV_FUNC ;
 void* ATTO_STS_INV_VERSION ;
 void* ATTO_STS_OUT_OF_RSRC ;
 scalar_t__ ESAS2R_FS_AT_ESASRAID2 ;
 scalar_t__ ESAS2R_FS_AT_TLSASHBA ;
 scalar_t__ ESAS2R_FS_AT_TSSASRAID2 ;
 scalar_t__ ESAS2R_FS_AT_TSSASRAID2E ;
 size_t ESAS2R_FS_CMD_CANCEL ;
 scalar_t__ ESAS2R_FS_DRVR_VER ;
 scalar_t__ ESAS2R_FS_VER ;
 int RS_PENDING ;
 int VDA_FLASH_COMMIT ;
 int VDA_FLASH_READ ;
 int VDA_FLASH_WRITE ;
 int* cmd_to_fls_func ;
 int esas2r_build_flash_req (struct esas2r_adapter*,struct esas2r_request*,int,int ,scalar_t__,scalar_t__) ;
 int esas2r_build_sg_list (struct esas2r_adapter*,struct esas2r_request*,struct esas2r_sg_context*) ;
 int esas2r_complete_fs_ioctl ;
 int esas2r_disable_heartbeat (struct esas2r_adapter*) ;
 int esas2r_sgc_init (struct esas2r_sg_context*,struct esas2r_adapter*,struct esas2r_request*,int ) ;
 int esas2r_start_request (struct esas2r_adapter*,struct esas2r_request*) ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ test_bit (int ,int *) ;

bool esas2r_process_fs_ioctl(struct esas2r_adapter *a,
        struct esas2r_ioctl_fs *fs,
        struct esas2r_request *rq,
        struct esas2r_sg_context *sgc)
{
 u8 cmdcnt = (u8)ARRAY_SIZE(cmd_to_fls_func);
 struct esas2r_ioctlfs_command *fsc = &fs->command;
 u8 func = 0;
 u32 datalen;

 fs->status = ATTO_STS_FAILED;
 fs->driver_error = RS_PENDING;

 if (fs->version > ESAS2R_FS_VER) {
  fs->status = ATTO_STS_INV_VERSION;
  return 0;
 }

 if (fsc->command >= cmdcnt) {
  fs->status = ATTO_STS_INV_FUNC;
  return 0;
 }

 func = cmd_to_fls_func[fsc->command];
 if (func == 0xFF) {
  fs->status = ATTO_STS_INV_FUNC;
  return 0;
 }

 if (fsc->command != ESAS2R_FS_CMD_CANCEL) {
  if ((a->pcid->device != ATTO_DID_MV_88RC9580
       || fs->adap_type != ESAS2R_FS_AT_ESASRAID2)
      && (a->pcid->device != ATTO_DID_MV_88RC9580TS
   || fs->adap_type != ESAS2R_FS_AT_TSSASRAID2)
      && (a->pcid->device != ATTO_DID_MV_88RC9580TSE
   || fs->adap_type != ESAS2R_FS_AT_TSSASRAID2E)
      && (a->pcid->device != ATTO_DID_MV_88RC9580TL
   || fs->adap_type != ESAS2R_FS_AT_TLSASHBA)) {
   fs->status = ATTO_STS_INV_ADAPTER;
   return 0;
  }

  if (fs->driver_ver > ESAS2R_FS_DRVR_VER) {
   fs->status = ATTO_STS_INV_DRVR_VER;
   return 0;
  }
 }

 if (test_bit(AF_DEGRADED_MODE, &a->flags)) {
  fs->status = ATTO_STS_DEGRADED;
  return 0;
 }

 rq->interrupt_cb = esas2r_complete_fs_ioctl;
 rq->interrupt_cx = fs;
 datalen = le32_to_cpu(fsc->length);
 esas2r_build_flash_req(a,
          rq,
          func,
          fsc->checksum,
          le32_to_cpu(fsc->flash_addr),
          datalen);

 if (func == VDA_FLASH_WRITE
     || func == VDA_FLASH_READ) {
  if (datalen == 0) {
   fs->status = ATTO_STS_INV_FUNC;
   return 0;
  }

  esas2r_sgc_init(sgc, a, rq, rq->vrq->flash.data.sge);
  sgc->length = datalen;

  if (!esas2r_build_sg_list(a, rq, sgc)) {
   fs->status = ATTO_STS_OUT_OF_RSRC;
   return 0;
  }
 }

 if (func == VDA_FLASH_COMMIT)
  esas2r_disable_heartbeat(a);

 esas2r_start_request(a, rq);

 return 1;
}
