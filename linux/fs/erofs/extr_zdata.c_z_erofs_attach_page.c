
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct z_erofs_collector {scalar_t__ mode; TYPE_1__* cl; int vector; } ;
struct page {int dummy; } ;
typedef enum z_erofs_page_type { ____Placeholder_z_erofs_page_type } z_erofs_page_type ;
struct TYPE_2__ {unsigned int vcnt; } ;


 scalar_t__ COLLECT_PRIMARY ;
 int EAGAIN ;
 int Z_EROFS_PAGE_TYPE_EXCLUSIVE ;
 int z_erofs_pagevec_enqueue (int *,struct page*,int,int*) ;
 scalar_t__ z_erofs_try_inplace_io (struct z_erofs_collector*,struct page*) ;

__attribute__((used)) static int z_erofs_attach_page(struct z_erofs_collector *clt,
          struct page *page,
          enum z_erofs_page_type type)
{
 int ret;
 bool occupied;


 if (clt->mode >= COLLECT_PRIMARY &&
     type == Z_EROFS_PAGE_TYPE_EXCLUSIVE &&
     z_erofs_try_inplace_io(clt, page))
  return 0;

 ret = z_erofs_pagevec_enqueue(&clt->vector,
          page, type, &occupied);
 clt->cl->vcnt += (unsigned int)ret;

 return ret ? 0 : -EAGAIN;
}
