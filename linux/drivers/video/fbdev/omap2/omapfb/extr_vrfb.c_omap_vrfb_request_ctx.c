
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct vrfb {int context; scalar_t__* paddr; } ;
struct TYPE_2__ {scalar_t__ base; } ;


 int DBG (char*,...) ;
 int EBUSY ;
 int ENOMEM ;
 int OMAP_VRFB_SIZE ;
 scalar_t__ SMS_ROT_VIRT_BASE (int) ;
 int ctx_lock ;
 int ctx_map ;
 TYPE_1__* ctxs ;
 int memset (struct vrfb*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int num_ctxs ;
 int omap_vrfb_release_ctx (struct vrfb*) ;
 int pr_err (char*,...) ;
 int request_mem_region (scalar_t__,int ,char*) ;
 int set_bit (int,int*) ;

int omap_vrfb_request_ctx(struct vrfb *vrfb)
{
 int rot;
 u32 paddr;
 u8 ctx;
 int r;

 DBG("request ctx\n");

 mutex_lock(&ctx_lock);

 for (ctx = 0; ctx < num_ctxs; ++ctx)
  if ((ctx_map & (1 << ctx)) == 0)
   break;

 if (ctx == num_ctxs) {
  pr_err("vrfb: no free contexts\n");
  r = -EBUSY;
  goto out;
 }

 DBG("found free ctx %d\n", ctx);

 set_bit(ctx, &ctx_map);

 memset(vrfb, 0, sizeof(*vrfb));

 vrfb->context = ctx;

 for (rot = 0; rot < 4; ++rot) {
  paddr = ctxs[ctx].base + SMS_ROT_VIRT_BASE(rot);
  if (!request_mem_region(paddr, OMAP_VRFB_SIZE, "vrfb")) {
   pr_err("vrfb: failed to reserve VRFB "
     "area for ctx %d, rotation %d\n",
     ctx, rot * 90);
   omap_vrfb_release_ctx(vrfb);
   r = -ENOMEM;
   goto out;
  }

  vrfb->paddr[rot] = paddr;

  DBG("VRFB %d/%d: %lx\n", ctx, rot*90, vrfb->paddr[rot]);
 }

 r = 0;
out:
 mutex_unlock(&ctx_lock);
 return r;
}
