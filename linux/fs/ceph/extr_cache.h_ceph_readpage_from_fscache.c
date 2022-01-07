
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int dummy; } ;


 int ENOBUFS ;

__attribute__((used)) static inline int ceph_readpage_from_fscache(struct inode* inode,
          struct page *page)
{
 return -ENOBUFS;
}
