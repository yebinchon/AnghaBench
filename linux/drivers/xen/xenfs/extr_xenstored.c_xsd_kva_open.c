
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {void* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ kasprintf (int ,char*,int ) ;
 int xen_store_interface ;

__attribute__((used)) static int xsd_kva_open(struct inode *inode, struct file *file)
{
 file->private_data = (void *)kasprintf(GFP_KERNEL, "0x%p",
            xen_store_interface);
 if (!file->private_data)
  return -ENOMEM;
 return 0;
}
