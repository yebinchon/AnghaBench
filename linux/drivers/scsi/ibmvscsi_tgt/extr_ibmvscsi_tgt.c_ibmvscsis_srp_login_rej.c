
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint ;
typedef int u32 ;
struct srp_login_rej {int buf_fmt; int tag; int reason; int opcode; } ;
struct TYPE_11__ {TYPE_4__* window; } ;
struct scsi_info {int dev; TYPE_5__ dds; } ;
struct iu_entry {int remote_token; TYPE_3__* sbuf; } ;
struct TYPE_8__ {int len; int tag; } ;
struct ibmvscsis_cmd {TYPE_2__ rsp; struct iu_entry* iue; } ;
struct format_code {int buffers; } ;
struct TYPE_7__ {struct srp_login_rej login_rej; } ;
struct TYPE_12__ {TYPE_1__ srp; } ;
struct TYPE_10__ {int liobn; } ;
struct TYPE_9__ {int dma; } ;


 long ADAPT_SUCCESS ;
 int CLIENT_FAILED ;
 int ERR_DISCONNECT_RECONNECT ;




 size_t LOCAL ;
 size_t REMOTE ;
 int RESPONSE_Q_DOWN ;
 int SRP_LOGIN_REJ ;
 int SUPPORTED_FORMATS ;
 int be64_to_cpu (int ) ;
 int connection_broken (struct scsi_info*) ;
 int cpu_to_be32 (int ) ;
 int dev_err (int *,char*,long) ;
 int dma_wmb () ;
 long h_copy_rdma (int,int ,int ,int ,int ) ;
 int ibmvscsis_post_disconnect (struct scsi_info*,int ,int) ;
 int memset (struct srp_login_rej*,int ,int) ;
 TYPE_6__* vio_iu (struct iu_entry*) ;

__attribute__((used)) static long ibmvscsis_srp_login_rej(struct scsi_info *vscsi,
        struct ibmvscsis_cmd *cmd, u32 reason)
{
 struct iu_entry *iue = cmd->iue;
 struct srp_login_rej *rej = &vio_iu(iue)->srp.login_rej;
 struct format_code *fmt;
 uint flag_bits = 0;
 long rc = ADAPT_SUCCESS;

 memset(rej, 0, sizeof(*rej));

 rej->opcode = SRP_LOGIN_REJ;
 rej->reason = cpu_to_be32(reason);
 rej->tag = cmd->rsp.tag;
 fmt = (struct format_code *)&rej->buf_fmt;
 fmt->buffers = SUPPORTED_FORMATS;

 cmd->rsp.len = sizeof(*rej);

 dma_wmb();
 rc = h_copy_rdma(cmd->rsp.len, vscsi->dds.window[LOCAL].liobn,
    iue->sbuf->dma, vscsi->dds.window[REMOTE].liobn,
    be64_to_cpu(iue->remote_token));

 switch (rc) {
 case 128:
  break;
 case 130:
  if (connection_broken(vscsi))
   flag_bits = RESPONSE_Q_DOWN | CLIENT_FAILED;
  dev_err(&vscsi->dev, "login_rej: error copying to client, rc %ld\n",
   rc);
  ibmvscsis_post_disconnect(vscsi, ERR_DISCONNECT_RECONNECT,
       flag_bits);
  break;
 case 129:
 case 131:
 default:
  dev_err(&vscsi->dev, "login_rej: error copying to client, rc %ld\n",
   rc);
  ibmvscsis_post_disconnect(vscsi, ERR_DISCONNECT_RECONNECT, 0);
  break;
 }

 return rc;
}
