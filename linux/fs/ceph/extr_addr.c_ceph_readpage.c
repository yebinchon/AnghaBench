
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct file {int dummy; } ;


 int EINPROGRESS ;
 int ceph_do_readpage (struct file*,struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int ceph_readpage(struct file *filp, struct page *page)
{
 int r = ceph_do_readpage(filp, page);
 if (r != -EINPROGRESS)
  unlock_page(page);
 else
  r = 0;
 return r;
}
