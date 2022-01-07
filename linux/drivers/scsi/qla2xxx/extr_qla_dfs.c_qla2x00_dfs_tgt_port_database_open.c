
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int * i_private; } ;
struct file {int dummy; } ;
typedef int scsi_qla_host_t ;


 int qla2x00_dfs_tgt_port_database_show ;
 int single_open (struct file*,int ,int *) ;

__attribute__((used)) static int
qla2x00_dfs_tgt_port_database_open(struct inode *inode, struct file *file)
{
 scsi_qla_host_t *vha = inode->i_private;

 return single_open(file, qla2x00_dfs_tgt_port_database_show, vha);
}
