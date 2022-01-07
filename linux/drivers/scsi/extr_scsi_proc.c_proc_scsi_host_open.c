
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int PAGE_SIZE ;
 int PDE_DATA (struct inode*) ;
 int proc_scsi_show ;
 int single_open_size (struct file*,int ,int ,int) ;

__attribute__((used)) static int proc_scsi_host_open(struct inode *inode, struct file *file)
{
 return single_open_size(file, proc_scsi_show, PDE_DATA(inode),
    4 * PAGE_SIZE);
}
