
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct ctrl_dbg* private_data; } ;
struct ctrl_dbg {int size; } ;
typedef int loff_t ;


 int fixed_size_llseek (struct file*,int ,int,int ) ;

__attribute__((used)) static loff_t lseek(struct file *file, loff_t off, int whence)
{
 struct ctrl_dbg *dbg = file->private_data;
 return fixed_size_llseek(file, off, whence, dbg->size);
}
