
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vnic_dev {int dummy; } ;
struct TYPE_6__ {int active_fw_reqs; } ;
struct TYPE_7__ {TYPE_2__ fw_stats; } ;
struct fnic {TYPE_1__* lport; TYPE_3__ fnic_stats; } ;
struct TYPE_8__ {int type; } ;
struct fcpio_fw_req {TYPE_4__ hdr; } ;
struct TYPE_5__ {int host; } ;
 int FNIC_SCSI_DBG (int ,int ,char*,int) ;
 int KERN_DEBUG ;
 int atomic64_dec (int *) ;
 int fnic_fcpio_ack_handler (struct fnic*,unsigned int,struct fcpio_fw_req*) ;
 int fnic_fcpio_flogi_reg_cmpl_handler (struct fnic*,struct fcpio_fw_req*) ;
 int fnic_fcpio_fw_reset_cmpl_handler (struct fnic*,struct fcpio_fw_req*) ;
 int fnic_fcpio_icmnd_cmpl_handler (struct fnic*,struct fcpio_fw_req*) ;
 int fnic_fcpio_itmf_cmpl_handler (struct fnic*,struct fcpio_fw_req*) ;
 struct fnic* vnic_dev_priv (struct vnic_dev*) ;

__attribute__((used)) static int fnic_fcpio_cmpl_handler(struct vnic_dev *vdev,
       unsigned int cq_index,
       struct fcpio_fw_req *desc)
{
 struct fnic *fnic = vnic_dev_priv(vdev);

 switch (desc->hdr.type) {
 case 130:
 case 129:
 case 131:
 case 132:
 case 128:
  atomic64_dec(&fnic->fnic_stats.fw_stats.active_fw_reqs);
  break;
 default:
  break;
 }

 switch (desc->hdr.type) {
 case 133:
  fnic_fcpio_ack_handler(fnic, cq_index, desc);
  break;

 case 130:
  fnic_fcpio_icmnd_cmpl_handler(fnic, desc);
  break;

 case 129:
  fnic_fcpio_itmf_cmpl_handler(fnic, desc);
  break;

 case 131:
 case 132:
  fnic_fcpio_flogi_reg_cmpl_handler(fnic, desc);
  break;

 case 128:
  fnic_fcpio_fw_reset_cmpl_handler(fnic, desc);
  break;

 default:
  FNIC_SCSI_DBG(KERN_DEBUG, fnic->lport->host,
         "firmware completion type %d\n",
         desc->hdr.type);
  break;
 }

 return 0;
}
