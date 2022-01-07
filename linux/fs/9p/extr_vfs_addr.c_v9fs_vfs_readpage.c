
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct file {int private_data; } ;


 int v9fs_fid_readpage (int ,struct page*) ;

__attribute__((used)) static int v9fs_vfs_readpage(struct file *filp, struct page *page)
{
 return v9fs_fid_readpage(filp->private_data, page);
}
