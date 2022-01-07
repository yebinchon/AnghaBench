
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_iter {int page; int kaddr; } ;


 int kunmap (int ) ;
 int kunmap_atomic (int ) ;
 int put_page (int ) ;
 int unlock_page (int ) ;

__attribute__((used)) static inline void xattr_iter_end(struct xattr_iter *it, bool atomic)
{

 if (!atomic)
  kunmap(it->page);
 else
  kunmap_atomic(it->kaddr);

 unlock_page(it->page);
 put_page(it->page);
}
