
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int dummy; } ;
struct page {int dummy; } ;


 int ENOMEM ;
 struct sg_table* ERR_PTR (int) ;
 int GFP_KERNEL ;
 unsigned int PAGE_SHIFT ;
 int kfree (struct sg_table*) ;
 struct sg_table* kmalloc (int,int ) ;
 int sg_alloc_table_from_pages (struct sg_table*,struct page**,unsigned int,int ,unsigned int,int ) ;

__attribute__((used)) static struct sg_table *
dmabuf_pages_to_sgt(struct page **pages, unsigned int nr_pages)
{
 struct sg_table *sgt;
 int ret;

 sgt = kmalloc(sizeof(*sgt), GFP_KERNEL);
 if (!sgt) {
  ret = -ENOMEM;
  goto out;
 }

 ret = sg_alloc_table_from_pages(sgt, pages, nr_pages, 0,
     nr_pages << PAGE_SHIFT,
     GFP_KERNEL);
 if (ret)
  goto out;

 return sgt;

out:
 kfree(sgt);
 return ERR_PTR(ret);
}
