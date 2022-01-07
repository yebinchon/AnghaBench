
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_private; } ;
struct file {scalar_t__ private_data; } ;


 int SNIC_BUG_ON (int) ;

__attribute__((used)) static int
snic_reset_stats_open(struct inode *inode, struct file *filp)
{
 SNIC_BUG_ON(!inode->i_private);
 filp->private_data = inode->i_private;

 return 0;
}
