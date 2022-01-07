
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int * private_data; } ;


 int nvmf_dev_show ;
 int single_open (struct file*,int ,int *) ;

__attribute__((used)) static int nvmf_dev_open(struct inode *inode, struct file *file)
{




 file->private_data = ((void*)0);
 return single_open(file, nvmf_dev_show, ((void*)0));
}
