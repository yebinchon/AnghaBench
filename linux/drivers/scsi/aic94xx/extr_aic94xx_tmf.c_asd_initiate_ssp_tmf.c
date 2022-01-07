
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_13__ {int tmf; int lun; } ;
struct TYPE_12__ {int tptt; int hashed_src_addr; int hashed_dest_addr; int frame_type; } ;
struct TYPE_14__ {int proto_conn_rate; int retry_count; void* index; void* itnl_to; void* conn_handle; void* sister_scb; TYPE_5__ ssp_task; TYPE_4__ ssp_frame; } ;
struct TYPE_9__ {int opcode; } ;
struct scb {TYPE_6__ ssp_tmf; TYPE_1__ header; } ;
struct domain_device {int tproto; int linkrate; scalar_t__ lldd_dev; TYPE_3__* port; int * hashed_sas_addr; } ;
struct asd_ha_struct {int dummy; } ;
struct asd_ascb {struct scb* scb; TYPE_7__* uldd_task; int * completion; } ;
struct TYPE_15__ {int dl_opcode; } ;
struct TYPE_11__ {TYPE_2__* ha; } ;
struct TYPE_10__ {int * hashed_sas_addr; struct asd_ha_struct* lldd_ha; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int DECLARE_TCS (TYPE_7__) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HASHED_SAS_ADDR_SIZE ;
 int INITIATE_SSP_TMF ;
 int ITNL_TIMEOUT_CONST ;
 int QUERY_SSP_TASK ;
 int SAS_PROTOCOL_SSP ;
 int SSP_TASK ;







 int TMF_QUERY_TASK ;
 int TMF_RESP_FUNC_COMPLETE ;
 int TMF_RESP_FUNC_ESUPP ;
 int TMF_RESP_FUNC_FAILED ;
 int TMF_RESP_INVALID_FRAME ;
 struct asd_ascb* asd_ascb_alloc_list (struct asd_ha_struct*,int*,int ) ;
 int asd_ascb_free (struct asd_ascb*) ;
 int asd_enqueue_internal (struct asd_ascb*,int ,int ) ;
 int asd_tmf_tasklet_complete ;
 int asd_tmf_timedout ;
 int completion ;
 int cpu_to_be16 (int) ;
 void* cpu_to_le16 (int) ;
 int memcpy (int ,int *,int) ;
 TYPE_7__ tcs ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int asd_initiate_ssp_tmf(struct domain_device *dev, u8 *lun,
    int tmf, int index)
{
 struct asd_ha_struct *asd_ha = dev->port->ha->lldd_ha;
 struct asd_ascb *ascb;
 int res = 1;
 struct scb *scb;
 DECLARE_COMPLETION_ONSTACK(completion);
 DECLARE_TCS(tcs);

 if (!(dev->tproto & SAS_PROTOCOL_SSP))
  return TMF_RESP_FUNC_ESUPP;

 ascb = asd_ascb_alloc_list(asd_ha, &res, GFP_KERNEL);
 if (!ascb)
  return -ENOMEM;

 ascb->completion = &completion;
 ascb->uldd_task = &tcs;
 scb = ascb->scb;

 if (tmf == TMF_QUERY_TASK)
  scb->header.opcode = QUERY_SSP_TASK;
 else
  scb->header.opcode = INITIATE_SSP_TMF;

 scb->ssp_tmf.proto_conn_rate = (1 << 4);
 scb->ssp_tmf.proto_conn_rate |= dev->linkrate;

 scb->ssp_tmf.ssp_frame.frame_type = SSP_TASK;
 memcpy(scb->ssp_tmf.ssp_frame.hashed_dest_addr,
        dev->hashed_sas_addr, HASHED_SAS_ADDR_SIZE);
 memcpy(scb->ssp_tmf.ssp_frame.hashed_src_addr,
        dev->port->ha->hashed_sas_addr, HASHED_SAS_ADDR_SIZE);
 scb->ssp_tmf.ssp_frame.tptt = cpu_to_be16(0xFFFF);

 memcpy(scb->ssp_tmf.ssp_task.lun, lun, 8);
 scb->ssp_tmf.ssp_task.tmf = tmf;

 scb->ssp_tmf.sister_scb = cpu_to_le16(0xFFFF);
 scb->ssp_tmf.conn_handle= cpu_to_le16((u16)(unsigned long)
           dev->lldd_dev);
 scb->ssp_tmf.retry_count = 1;
 scb->ssp_tmf.itnl_to = cpu_to_le16(ITNL_TIMEOUT_CONST);
 if (tmf == TMF_QUERY_TASK)
  scb->ssp_tmf.index = cpu_to_le16(index);

 res = asd_enqueue_internal(ascb, asd_tmf_tasklet_complete,
       asd_tmf_timedout);
 if (res)
  goto out_err;
 wait_for_completion(&completion);

 switch (tcs.dl_opcode) {
 case 134:
  res = TMF_RESP_FUNC_COMPLETE;
  break;
 case 133:
  res = TMF_RESP_INVALID_FRAME;
  break;
 case 128:
  res = TMF_RESP_FUNC_FAILED;
  break;
 case 130:
 case 129:
 case 132:
  res = TMF_RESP_FUNC_COMPLETE;
  break;
 case 131:
  res = TMF_RESP_FUNC_ESUPP;
  break;
 default:

  res = tcs.dl_opcode;
  break;
 }
 return res;
out_err:
 asd_ascb_free(ascb);
 return res;
}
