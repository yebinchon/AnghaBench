
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {scalar_t__ private; } ;
typedef void ceph_snap_context ;


 scalar_t__ PagePrivate (struct page*) ;

__attribute__((used)) static inline struct ceph_snap_context *page_snap_context(struct page *page)
{
 if (PagePrivate(page))
  return (void *)page->private;
 return ((void*)0);
}
