
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_private; } ;
struct file {int dummy; } ;


 int hisi_sas_debugfs_bist_mode_show ;
 int single_open (struct file*,int ,int ) ;

__attribute__((used)) static int hisi_sas_debugfs_bist_mode_open(struct inode *inode,
        struct file *filp)
{
 return single_open(filp, hisi_sas_debugfs_bist_mode_show,
      inode->i_private);
}
