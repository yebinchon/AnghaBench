
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_private; } ;
struct file {int dummy; } ;


 int single_open (struct file*,int ,int ) ;
 int snic_stats_show ;

__attribute__((used)) static int
snic_stats_open(struct inode *inode, struct file *filp)
{
 return single_open(filp, snic_stats_show, inode->i_private);
}
