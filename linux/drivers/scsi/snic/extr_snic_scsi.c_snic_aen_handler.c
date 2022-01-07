
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
typedef int u8 ;
typedef int u32 ;
struct snic_async_evnotify {int ev_id; } ;
struct TYPE_2__ {struct snic_async_evnotify async_ev; } ;
struct snic_fw_req {int hdr; TYPE_1__ u; } ;
struct snic {int shost; } ;


 int SNIC_ASSERT_NOT_IMPL (int) ;
 int SNIC_BUG_ON (int) ;
 int SNIC_HOST_INFO (int ,char*) ;
 int SNIC_SCSI_DBG (int ,char*,int ,int ,int,int,int ) ;
 int le32_to_cpu (int ) ;
 int snic_io_hdr_dec (int *,int *,int *,int*,int*,int *) ;

__attribute__((used)) static void
snic_aen_handler(struct snic *snic, struct snic_fw_req *fwreq)
{
 u8 typ, hdr_stat;
 u32 cmnd_id, hid;
 ulong ctx;
 struct snic_async_evnotify *aen = &fwreq->u.async_ev;
 u32 event_id = 0;

 snic_io_hdr_dec(&fwreq->hdr, &typ, &hdr_stat, &cmnd_id, &hid, &ctx);
 SNIC_SCSI_DBG(snic->shost,
        "aen: type = %x, hdr_stat = %x, cmnd_id = %x, hid = %x, ctx = %lx\n",
        typ, hdr_stat, cmnd_id, hid, ctx);

 event_id = le32_to_cpu(aen->ev_id);

 switch (event_id) {
 case 129:
  SNIC_HOST_INFO(snic->shost, "aen:TGT_OFFLINE Event Recvd.\n");
  break;

 case 128:
  SNIC_HOST_INFO(snic->shost, "aen:TGT_ONLINE Event Recvd.\n");
  break;

 case 133:
  SNIC_HOST_INFO(snic->shost, "aen:LUN_OFFLINE Event Recvd.\n");
  break;

 case 132:
  SNIC_HOST_INFO(snic->shost, "aen:LUN_ONLINE Event Recvd.\n");
  break;

 case 137:
  SNIC_HOST_INFO(snic->shost, "aen:Config Change Event Recvd.\n");
  break;

 case 131:
  SNIC_HOST_INFO(snic->shost, "aen:TGT_ADD Event Recvd.\n");
  break;

 case 130:
  SNIC_HOST_INFO(snic->shost, "aen:TGT_DEL Event Recvd.\n");
  break;

 case 135:
  SNIC_HOST_INFO(snic->shost, "aen:LUN_ADD Event Recvd.\n");
  break;

 case 134:
  SNIC_HOST_INFO(snic->shost, "aen:LUN_DEL Event Recvd.\n");
  break;

 case 136:
  SNIC_HOST_INFO(snic->shost, "aen:DISC_CMPL Event Recvd.\n");
  break;

 default:
  SNIC_HOST_INFO(snic->shost, "aen:Unknown Event Recvd.\n");
  SNIC_BUG_ON(1);
  break;
 }

 SNIC_ASSERT_NOT_IMPL(1);
}
