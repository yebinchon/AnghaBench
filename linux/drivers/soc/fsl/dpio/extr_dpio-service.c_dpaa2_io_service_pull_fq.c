
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct qbman_pull_desc {int dummy; } ;
struct dpaa2_io_store {int * swp; scalar_t__ max; int paddr; int vaddr; } ;
struct dpaa2_io {int * swp; } ;


 int ENODEV ;
 int qbman_pull_desc_clear (struct qbman_pull_desc*) ;
 int qbman_pull_desc_set_fq (struct qbman_pull_desc*,int ) ;
 int qbman_pull_desc_set_numframes (struct qbman_pull_desc*,int ) ;
 int qbman_pull_desc_set_storage (struct qbman_pull_desc*,int ,int ,int) ;
 int qbman_swp_pull (int *,struct qbman_pull_desc*) ;
 struct dpaa2_io* service_select (struct dpaa2_io*) ;

int dpaa2_io_service_pull_fq(struct dpaa2_io *d, u32 fqid,
        struct dpaa2_io_store *s)
{
 struct qbman_pull_desc pd;
 int err;

 qbman_pull_desc_clear(&pd);
 qbman_pull_desc_set_storage(&pd, s->vaddr, s->paddr, 1);
 qbman_pull_desc_set_numframes(&pd, (u8)s->max);
 qbman_pull_desc_set_fq(&pd, fqid);

 d = service_select(d);
 if (!d)
  return -ENODEV;
 s->swp = d->swp;
 err = qbman_swp_pull(d->swp, &pd);
 if (err)
  s->swp = ((void*)0);

 return err;
}
