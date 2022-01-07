
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z_erofs_pagevec_ctor {int curr; int pages; } ;


 int kunmap (int ) ;
 int kunmap_atomic (int ) ;

__attribute__((used)) static inline void z_erofs_pagevec_ctor_exit(struct z_erofs_pagevec_ctor *ctor,
          bool atomic)
{
 if (!ctor->curr)
  return;

 if (atomic)
  kunmap_atomic(ctor->pages);
 else
  kunmap(ctor->curr);
}
