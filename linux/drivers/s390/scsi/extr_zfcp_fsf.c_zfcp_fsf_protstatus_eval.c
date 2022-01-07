
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


union fsf_prot_status_qual {int link_down_info; int * word; } ;
struct zfcp_fsf_req {int status; struct fsf_qtcb* qtcb; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {TYPE_3__* ccw_device; int status; } ;
struct TYPE_8__ {int prot_status; union fsf_prot_status_qual prot_status_qual; } ;
struct TYPE_5__ {scalar_t__ req_handle; } ;
struct TYPE_6__ {TYPE_1__ support; } ;
struct fsf_qtcb {TYPE_4__ prefix; TYPE_2__ bottom; } ;
struct TYPE_7__ {int dev; } ;
 int FSF_QTCB_CURRENT_VERSION ;
 int ZFCP_STATUS_ADAPTER_HOST_CON_INIT ;
 int ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED ;
 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int ZFCP_STATUS_COMMON_RUNNING ;
 int ZFCP_STATUS_FSFREQ_DISMISSED ;
 int ZFCP_STATUS_FSFREQ_ERROR ;
 int atomic_or (int ,int *) ;
 int dev_err (int *,char*,...) ;
 int zfcp_dbf_hba_fsf_response (struct zfcp_fsf_req*) ;
 int zfcp_erp_adapter_reopen (struct zfcp_adapter*,int,char*) ;
 int zfcp_erp_adapter_shutdown (struct zfcp_adapter*,int ,char*) ;
 int zfcp_erp_set_adapter_status (struct zfcp_adapter*,int ) ;
 int zfcp_fsf_link_down_info_eval (struct zfcp_fsf_req*,int *) ;
 int zfcp_qdio_siosl (struct zfcp_adapter*) ;

__attribute__((used)) static void zfcp_fsf_protstatus_eval(struct zfcp_fsf_req *req)
{
 struct zfcp_adapter *adapter = req->adapter;
 struct fsf_qtcb *qtcb = req->qtcb;
 union fsf_prot_status_qual *psq = &qtcb->prefix.prot_status_qual;

 zfcp_dbf_hba_fsf_response(req);

 if (req->status & ZFCP_STATUS_FSFREQ_DISMISSED) {
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  return;
 }

 switch (qtcb->prefix.prot_status) {
 case 134:
 case 135:
  return;
 case 131:
  dev_err(&adapter->ccw_device->dev,
   "QTCB version 0x%x not supported by FCP adapter "
   "(0x%x to 0x%x)\n", FSF_QTCB_CURRENT_VERSION,
   psq->word[0], psq->word[1]);
  zfcp_erp_adapter_shutdown(adapter, 0, "fspse_1");
  break;
 case 136:
 case 129:
  zfcp_erp_adapter_reopen(adapter, 0, "fspse_2");
  req->status |= ZFCP_STATUS_FSFREQ_ERROR;
  break;
 case 128:
  dev_err(&adapter->ccw_device->dev,
   "The QTCB type is not supported by the FCP adapter\n");
  zfcp_erp_adapter_shutdown(adapter, 0, "fspse_3");
  break;
 case 133:
  atomic_or(ZFCP_STATUS_ADAPTER_HOST_CON_INIT,
    &adapter->status);
  break;
 case 137:
  dev_err(&adapter->ccw_device->dev,
   "0x%Lx is an ambiguous request identifier\n",
   (unsigned long long)qtcb->bottom.support.req_handle);
  zfcp_erp_adapter_shutdown(adapter, 0, "fspse_4");
  break;
 case 132:
  zfcp_fsf_link_down_info_eval(req, &psq->link_down_info);

  zfcp_erp_adapter_reopen(adapter, 0, "fspse_6");
  break;
 case 130:

  zfcp_erp_set_adapter_status(adapter,
         ZFCP_STATUS_COMMON_RUNNING);
  zfcp_erp_adapter_reopen(adapter,
     ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED |
     ZFCP_STATUS_COMMON_ERP_FAILED,
     "fspse_8");
  break;
 default:
  dev_err(&adapter->ccw_device->dev,
   "0x%x is not a valid transfer protocol status\n",
   qtcb->prefix.prot_status);
  zfcp_qdio_siosl(adapter);
  zfcp_erp_adapter_shutdown(adapter, 0, "fspse_9");
 }
 req->status |= ZFCP_STATUS_FSFREQ_ERROR;
}
