
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fce_enabled; } ;
struct qla_hw_data {int fce_mutex; TYPE_1__ flags; int fce_bufs; int fce_mb; int fce_dma; int fce; } ;
struct inode {TYPE_2__* i_private; } ;
struct file {int dummy; } ;
struct TYPE_6__ {struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;


 int fce_calc_size (int ) ;
 int memset (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ql_dbg (int ,TYPE_2__*,int,char*,int) ;
 int ql_dbg_user ;
 int qla2x00_enable_fce_trace (TYPE_2__*,int ,int ,int ,int *) ;
 int single_release (struct inode*,struct file*) ;

__attribute__((used)) static int
qla2x00_dfs_fce_release(struct inode *inode, struct file *file)
{
 scsi_qla_host_t *vha = inode->i_private;
 struct qla_hw_data *ha = vha->hw;
 int rval;

 if (ha->flags.fce_enabled)
  goto out;

 mutex_lock(&ha->fce_mutex);


 ha->flags.fce_enabled = 1;
 memset(ha->fce, 0, fce_calc_size(ha->fce_bufs));
 rval = qla2x00_enable_fce_trace(vha, ha->fce_dma, ha->fce_bufs,
     ha->fce_mb, &ha->fce_bufs);
 if (rval) {
  ql_dbg(ql_dbg_user, vha, 0x700d,
      "DebugFS: Unable to reinitialize FCE (%d).\n", rval);
  ha->flags.fce_enabled = 0;
 }

 mutex_unlock(&ha->fce_mutex);
out:
 return single_release(inode, file);
}
