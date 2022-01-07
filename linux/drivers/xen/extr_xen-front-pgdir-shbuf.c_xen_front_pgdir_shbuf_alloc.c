
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct xen_front_pgdir_shbuf_cfg {int pages; int num_pages; int xb_dev; scalar_t__ be_alloc; struct xen_front_pgdir_shbuf* pgdir; } ;
struct xen_front_pgdir_shbuf {TYPE_1__* ops; int pages; int num_pages; int xb_dev; } ;
struct TYPE_3__ {int (* fill_page_dir ) (struct xen_front_pgdir_shbuf*) ;int (* calc_num_grefs ) (struct xen_front_pgdir_shbuf*) ;} ;


 int alloc_storage (struct xen_front_pgdir_shbuf*) ;
 TYPE_1__ backend_ops ;
 int grant_references (struct xen_front_pgdir_shbuf*) ;
 TYPE_1__ local_ops ;
 int stub1 (struct xen_front_pgdir_shbuf*) ;
 int stub2 (struct xen_front_pgdir_shbuf*) ;
 int xen_front_pgdir_shbuf_free (struct xen_front_pgdir_shbuf*) ;

int xen_front_pgdir_shbuf_alloc(struct xen_front_pgdir_shbuf_cfg *cfg)
{
 struct xen_front_pgdir_shbuf *buf = cfg->pgdir;
 int ret;

 if (cfg->be_alloc)
  buf->ops = &backend_ops;
 else
  buf->ops = &local_ops;
 buf->xb_dev = cfg->xb_dev;
 buf->num_pages = cfg->num_pages;
 buf->pages = cfg->pages;

 buf->ops->calc_num_grefs(buf);

 ret = alloc_storage(buf);
 if (ret)
  goto fail;

 ret = grant_references(buf);
 if (ret)
  goto fail;

 buf->ops->fill_page_dir(buf);

 return 0;

fail:
 xen_front_pgdir_shbuf_free(buf);
 return ret;
}
