
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int length; int type; } ;
struct viosrp_fast_fail {TYPE_3__ common; } ;
struct TYPE_5__ {struct viosrp_fast_fail fast_fail; } ;
struct TYPE_6__ {TYPE_1__ mad; } ;
struct srp_event_struct {TYPE_2__ iu; } ;
struct ibmvscsi_host_data {TYPE_4__* host; int pool; } ;
struct TYPE_8__ {int host_lock; } ;


 int BUG_ON (int) ;
 int VIOSRP_ENABLE_FAST_FAIL ;
 int VIOSRP_MAD_FORMAT ;
 int cpu_to_be16 (int) ;
 int cpu_to_be32 (int ) ;
 int fast_fail ;
 int fast_fail_rsp ;
 struct srp_event_struct* get_event_struct (int *) ;
 int ibmvscsi_send_srp_event (struct srp_event_struct*,struct ibmvscsi_host_data*,int) ;
 int info_timeout ;
 int init_event_struct (struct srp_event_struct*,int ,int ,int) ;
 int memset (struct viosrp_fast_fail*,int ,int) ;
 int send_mad_capabilities (struct ibmvscsi_host_data*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int enable_fast_fail(struct ibmvscsi_host_data *hostdata)
{
 int rc;
 unsigned long flags;
 struct viosrp_fast_fail *fast_fail_mad;
 struct srp_event_struct *evt_struct;

 if (!fast_fail) {
  send_mad_capabilities(hostdata);
  return 0;
 }

 evt_struct = get_event_struct(&hostdata->pool);
 BUG_ON(!evt_struct);

 init_event_struct(evt_struct, fast_fail_rsp, VIOSRP_MAD_FORMAT, info_timeout);

 fast_fail_mad = &evt_struct->iu.mad.fast_fail;
 memset(fast_fail_mad, 0, sizeof(*fast_fail_mad));
 fast_fail_mad->common.type = cpu_to_be32(VIOSRP_ENABLE_FAST_FAIL);
 fast_fail_mad->common.length = cpu_to_be16(sizeof(*fast_fail_mad));

 spin_lock_irqsave(hostdata->host->host_lock, flags);
 rc = ibmvscsi_send_srp_event(evt_struct, hostdata, info_timeout * 2);
 spin_unlock_irqrestore(hostdata->host->host_lock, flags);
 return rc;
}
