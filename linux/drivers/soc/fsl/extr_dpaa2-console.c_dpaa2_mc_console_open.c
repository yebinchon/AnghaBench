
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int MAGIC_MC ;
 int MC_BUFFER_OFFSET ;
 int MC_BUFFER_SIZE ;
 int MC_OFFSET_DELTA ;
 int dpaa2_generic_console_open (struct inode*,struct file*,int ,int ,int ,int ) ;

__attribute__((used)) static int dpaa2_mc_console_open(struct inode *node, struct file *fp)
{
 return dpaa2_generic_console_open(node, fp,
       MC_BUFFER_OFFSET, MC_BUFFER_SIZE,
       MAGIC_MC, MC_OFFSET_DELTA);
}
