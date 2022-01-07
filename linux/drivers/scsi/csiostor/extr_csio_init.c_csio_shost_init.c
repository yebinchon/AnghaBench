
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct device {int dummy; } ;
struct csio_lnode {int dev_num; } ;
struct TYPE_6__ {int max_ssns; } ;
struct csio_hw {TYPE_2__* pdev; struct csio_lnode* rln; TYPE_1__ fres_info; } ;
struct Scsi_Host {int host_no; int this_id; int unique_id; int max_cmd_len; int transportt; int max_lun; int max_id; int can_queue; } ;
struct TYPE_8__ {void* cmd_per_lun; } ;
struct TYPE_7__ {struct device dev; } ;


 int CSIO_MAX_LUN ;
 int CSIO_MAX_QUEUE ;
 int csio_fcoe_rnodes ;
 TYPE_3__ csio_fcoe_shost_template ;
 TYPE_3__ csio_fcoe_shost_vport_template ;
 int csio_fcoe_transport ;
 int csio_fcoe_transport_vport ;
 int csio_lnode_exit (struct csio_lnode*) ;
 scalar_t__ csio_lnode_init (struct csio_lnode*,struct csio_hw*,struct csio_lnode*) ;
 void* csio_lun_qdepth ;
 int memset (struct csio_lnode*,int ,int) ;
 int min_t (int ,int ,int ) ;
 scalar_t__ scsi_add_host_with_dma (struct Scsi_Host*,struct device*,struct device*) ;
 struct Scsi_Host* scsi_host_alloc (TYPE_3__*,int) ;
 int scsi_host_put (struct Scsi_Host*) ;
 struct csio_lnode* shost_priv (struct Scsi_Host*) ;
 int uint32_t ;

struct csio_lnode *
csio_shost_init(struct csio_hw *hw, struct device *dev,
    bool probe, struct csio_lnode *pln)
{
 struct Scsi_Host *shost = ((void*)0);
 struct csio_lnode *ln;

 csio_fcoe_shost_template.cmd_per_lun = csio_lun_qdepth;
 csio_fcoe_shost_vport_template.cmd_per_lun = csio_lun_qdepth;





 if (dev == &hw->pdev->dev)
  shost = scsi_host_alloc(
    &csio_fcoe_shost_template,
    sizeof(struct csio_lnode));
 else
  shost = scsi_host_alloc(
    &csio_fcoe_shost_vport_template,
    sizeof(struct csio_lnode));

 if (!shost)
  goto err;

 ln = shost_priv(shost);
 memset(ln, 0, sizeof(struct csio_lnode));


 ln->dev_num = (shost->host_no << 16);

 shost->can_queue = CSIO_MAX_QUEUE;
 shost->this_id = -1;
 shost->unique_id = shost->host_no;
 shost->max_cmd_len = 16;
 shost->max_id = min_t(uint32_t, csio_fcoe_rnodes,
         hw->fres_info.max_ssns);
 shost->max_lun = CSIO_MAX_LUN;
 if (dev == &hw->pdev->dev)
  shost->transportt = csio_fcoe_transport;
 else
  shost->transportt = csio_fcoe_transport_vport;


 if (!hw->rln)
  hw->rln = ln;


 if (csio_lnode_init(ln, hw, pln))
  goto err_shost_put;

 if (scsi_add_host_with_dma(shost, dev, &hw->pdev->dev))
  goto err_lnode_exit;

 return ln;

err_lnode_exit:
 csio_lnode_exit(ln);
err_shost_put:
 scsi_host_put(shost);
err:
 return ((void*)0);
}
