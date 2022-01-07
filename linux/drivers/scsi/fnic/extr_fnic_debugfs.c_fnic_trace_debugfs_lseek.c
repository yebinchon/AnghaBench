
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {TYPE_1__* private_data; } ;
typedef int loff_t ;
struct TYPE_2__ {int buffer_len; } ;
typedef TYPE_1__ fnic_dbgfs_t ;


 int fixed_size_llseek (struct file*,int ,int,int ) ;

__attribute__((used)) static loff_t fnic_trace_debugfs_lseek(struct file *file,
     loff_t offset,
     int howto)
{
 fnic_dbgfs_t *fnic_dbg_prt = file->private_data;
 return fixed_size_llseek(file, offset, howto,
    fnic_dbg_prt->buffer_len);
}
