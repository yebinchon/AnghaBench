
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsoc_device_region {int dummy; } ;
struct file {int dummy; } ;


 int file_inode (struct file*) ;
 struct vsoc_device_region* vsoc_region_from_inode (int ) ;

__attribute__((used)) static
inline struct vsoc_device_region *vsoc_region_from_filep(struct file *inode)
{
 return vsoc_region_from_inode(file_inode(inode));
}
