
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int AIOP_BUFFER_OFFSET ;
 int AIOP_BUFFER_SIZE ;
 int AIOP_OFFSET_DELTA ;
 int MAGIC_AIOP ;
 int dpaa2_generic_console_open (struct inode*,struct file*,int ,int ,int ,int ) ;

__attribute__((used)) static int dpaa2_aiop_console_open(struct inode *node, struct file *fp)
{
 return dpaa2_generic_console_open(node, fp,
       AIOP_BUFFER_OFFSET, AIOP_BUFFER_SIZE,
       MAGIC_AIOP, AIOP_OFFSET_DELTA);
}
