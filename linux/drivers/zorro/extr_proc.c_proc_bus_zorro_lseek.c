
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct ConfigDev {int dummy; } ;
typedef int loff_t ;


 int fixed_size_llseek (struct file*,int ,int,int) ;

__attribute__((used)) static loff_t
proc_bus_zorro_lseek(struct file *file, loff_t off, int whence)
{
 return fixed_size_llseek(file, off, whence, sizeof(struct ConfigDev));
}
