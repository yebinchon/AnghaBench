
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {void* private_data; } ;



__attribute__((used)) static void *ocxlflash_fops_get_context(struct file *file)
{
 return file->private_data;
}
