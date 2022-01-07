
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vrfb {int context; scalar_t__* paddr; } ;


 int BUG_ON (int) ;
 int DBG (char*,int) ;
 int OMAP_VRFB_SIZE ;
 int clear_bit (int,int*) ;
 int ctx_lock ;
 int ctx_map ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int release_mem_region (scalar_t__,int ) ;

void omap_vrfb_release_ctx(struct vrfb *vrfb)
{
 int rot;
 int ctx = vrfb->context;

 if (ctx == 0xff)
  return;

 DBG("release ctx %d\n", ctx);

 mutex_lock(&ctx_lock);

 BUG_ON(!(ctx_map & (1 << ctx)));

 clear_bit(ctx, &ctx_map);

 for (rot = 0; rot < 4; ++rot) {
  if (vrfb->paddr[rot]) {
   release_mem_region(vrfb->paddr[rot], OMAP_VRFB_SIZE);
   vrfb->paddr[rot] = 0;
  }
 }

 vrfb->context = 0xff;

 mutex_unlock(&ctx_lock);
}
