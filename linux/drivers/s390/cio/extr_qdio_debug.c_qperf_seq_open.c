
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int i_private; } ;


 TYPE_1__* file_inode (struct file*) ;
 int qperf_show ;
 int single_open (struct file*,int ,int ) ;

__attribute__((used)) static int qperf_seq_open(struct inode *inode, struct file *filp)
{
 return single_open(filp, qperf_show,
      file_inode(filp)->i_private);
}
