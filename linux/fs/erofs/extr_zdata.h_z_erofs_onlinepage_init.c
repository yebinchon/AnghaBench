
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int z_erofs_onlinepage_t ;
struct page {int dummy; } ;


 int ATOMIC_INIT (int) ;
 int SetPagePrivate (struct page*) ;
 int set_page_private (struct page*,unsigned long) ;
 int smp_wmb () ;

__attribute__((used)) static inline void z_erofs_onlinepage_init(struct page *page)
{
 union {
  z_erofs_onlinepage_t o;
  unsigned long v;

 } u = { .o = ATOMIC_INIT(1) };

 set_page_private(page, u.v);
 smp_wmb();
 SetPagePrivate(page);
}
