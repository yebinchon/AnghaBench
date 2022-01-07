
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_front_pgdir_shbuf {void* directory; void* grefs; int num_grefs; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int get_num_pages_dir (struct xen_front_pgdir_shbuf*) ;
 void* kcalloc (int ,int,int ) ;

__attribute__((used)) static int alloc_storage(struct xen_front_pgdir_shbuf *buf)
{
 buf->grefs = kcalloc(buf->num_grefs, sizeof(*buf->grefs), GFP_KERNEL);
 if (!buf->grefs)
  return -ENOMEM;

 buf->directory = kcalloc(get_num_pages_dir(buf), PAGE_SIZE, GFP_KERNEL);
 if (!buf->directory)
  return -ENOMEM;

 return 0;
}
