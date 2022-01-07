
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ulong ;
typedef int u32 ;
struct snic_req_info {int dummy; } ;
struct TYPE_5__ {void* os_type; void* drvr_ver; } ;
struct TYPE_6__ {TYPE_2__ exch_ver; } ;
struct snic_host_req {TYPE_3__ u; int hdr; } ;
struct TYPE_4__ {int hid; } ;
struct snic {int shost; TYPE_1__ config; } ;


 int ENOMEM ;
 int SCSI_NO_TAG ;
 int SNIC_DRV_VERSION ;
 int SNIC_HOST_ERR (int ,char*,int) ;
 int SNIC_HOST_INFO (int ,char*,...) ;
 int SNIC_OS_LINUX ;
 int SNIC_REQ_EXCH_VER ;
 void* cpu_to_le32 (int ) ;
 struct snic_host_req* rqi_to_req (struct snic_req_info*) ;
 int snic_handle_untagged_req (struct snic*,struct snic_req_info*) ;
 int snic_io_hdr_enc (int *,int ,int ,int ,int ,int ,int ) ;
 int snic_queue_wq_desc (struct snic*,struct snic_host_req*,int) ;
 int snic_release_untagged_req (struct snic*,struct snic_req_info*) ;
 struct snic_req_info* snic_req_init (struct snic*,int ) ;
 int snic_ver_enc (int ) ;

int
snic_queue_exch_ver_req(struct snic *snic)
{
 struct snic_req_info *rqi = ((void*)0);
 struct snic_host_req *req = ((void*)0);
 u32 ver = 0;
 int ret = 0;

 SNIC_HOST_INFO(snic->shost, "Exch Ver Req Preparing...\n");

 rqi = snic_req_init(snic, 0);
 if (!rqi) {
  SNIC_HOST_ERR(snic->shost,
         "Queuing Exch Ver Req failed, err = %d\n",
         ret);

  ret = -ENOMEM;
  goto error;
 }

 req = rqi_to_req(rqi);


 snic_io_hdr_enc(&req->hdr, SNIC_REQ_EXCH_VER, 0, SCSI_NO_TAG,
   snic->config.hid, 0, (ulong)rqi);
 ver = snic_ver_enc(SNIC_DRV_VERSION);
 req->u.exch_ver.drvr_ver = cpu_to_le32(ver);
 req->u.exch_ver.os_type = cpu_to_le32(SNIC_OS_LINUX);

 snic_handle_untagged_req(snic, rqi);

 ret = snic_queue_wq_desc(snic, req, sizeof(*req));
 if (ret) {
  snic_release_untagged_req(snic, rqi);
  SNIC_HOST_ERR(snic->shost,
         "Queuing Exch Ver Req failed, err = %d\n",
         ret);
  goto error;
 }

 SNIC_HOST_INFO(snic->shost, "Exch Ver Req is issued. ret = %d\n", ret);

error:
 return ret;
}
