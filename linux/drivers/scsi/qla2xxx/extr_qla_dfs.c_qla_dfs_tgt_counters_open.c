
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int dummy; } ;
struct inode {struct scsi_qla_host* i_private; } ;
struct file {int dummy; } ;


 int qla_dfs_tgt_counters_show ;
 int single_open (struct file*,int ,struct scsi_qla_host*) ;

__attribute__((used)) static int
qla_dfs_tgt_counters_open(struct inode *inode, struct file *file)
{
 struct scsi_qla_host *vha = inode->i_private;

 return single_open(file, qla_dfs_tgt_counters_show, vha);
}
