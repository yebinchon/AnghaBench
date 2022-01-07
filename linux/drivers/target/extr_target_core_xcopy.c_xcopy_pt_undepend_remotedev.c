
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xcopy_op {scalar_t__ op_origin; struct se_device* src_dev; struct se_device* dst_dev; } ;
struct TYPE_2__ {int cg_item; } ;
struct se_device {TYPE_1__ dev_group; } ;


 scalar_t__ XCOL_SOURCE_RECV_OP ;
 int pr_debug (char*,struct se_device*,int *) ;
 int target_undepend_item (int *) ;

__attribute__((used)) static void xcopy_pt_undepend_remotedev(struct xcopy_op *xop)
{
 struct se_device *remote_dev;

 if (xop->op_origin == XCOL_SOURCE_RECV_OP)
  remote_dev = xop->dst_dev;
 else
  remote_dev = xop->src_dev;

 pr_debug("Calling configfs_undepend_item for"
    " remote_dev: %p remote_dev->dev_group: %p\n",
    remote_dev, &remote_dev->dev_group.cg_item);

 target_undepend_item(&remote_dev->dev_group.cg_item);
}
