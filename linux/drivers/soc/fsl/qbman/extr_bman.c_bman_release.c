
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bman_portal {int p; } ;
struct bman_pool {int bpid; } ;
struct bm_rcr_entry {int * bufs; } ;
struct bm_buffer {int dummy; } ;
typedef int bufs ;


 int BM_RCR_VERB_BUFCOUNT_MASK ;
 int BM_RCR_VERB_CMD_BPID_SINGLE ;
 int DPAA_ASSERT (int) ;
 int ETIMEDOUT ;
 int bm_buffer_get64 (struct bm_buffer const*) ;
 int bm_buffer_set64 (int *,int ) ;
 int bm_buffer_set_bpid (int *,int ) ;
 int bm_rcr_get_avail (int *) ;
 int bm_rcr_pvb_commit (int *,int) ;
 struct bm_rcr_entry* bm_rcr_start (int *) ;
 struct bman_portal* get_affine_portal () ;
 scalar_t__ likely (struct bm_rcr_entry*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int memcpy (int *,struct bm_buffer const*,int) ;
 int put_affine_portal () ;
 int udelay (int) ;
 scalar_t__ unlikely (int) ;
 int update_rcr_ci (struct bman_portal*,int) ;

int bman_release(struct bman_pool *pool, const struct bm_buffer *bufs, u8 num)
{
 struct bman_portal *p;
 struct bm_rcr_entry *r;
 unsigned long irqflags;
 int avail, timeout = 1000;
 int i = num - 1;

 DPAA_ASSERT(num > 0 && num <= 8);

 do {
  p = get_affine_portal();
  local_irq_save(irqflags);
  avail = bm_rcr_get_avail(&p->p);
  if (avail < 2)
   update_rcr_ci(p, avail);
  r = bm_rcr_start(&p->p);
  local_irq_restore(irqflags);
  put_affine_portal();
  if (likely(r))
   break;

  udelay(1);
 } while (--timeout);

 if (unlikely(!timeout))
  return -ETIMEDOUT;

 p = get_affine_portal();
 local_irq_save(irqflags);




 bm_buffer_set64(r->bufs, bm_buffer_get64(bufs));
 bm_buffer_set_bpid(r->bufs, pool->bpid);
 if (i)
  memcpy(&r->bufs[1], &bufs[1], i * sizeof(bufs[0]));

 bm_rcr_pvb_commit(&p->p, BM_RCR_VERB_CMD_BPID_SINGLE |
     (num & BM_RCR_VERB_BUFCOUNT_MASK));

 local_irq_restore(irqflags);
 put_affine_portal();
 return 0;
}
