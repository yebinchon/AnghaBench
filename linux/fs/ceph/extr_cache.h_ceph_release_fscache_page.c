
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int gfp_t ;



__attribute__((used)) static inline int ceph_release_fscache_page(struct page *page, gfp_t gfp)
{
 return 1;
}
