
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcs_group {int offset; int num_tcs; int lock; int slots; } ;
struct rsc_drv {int dummy; } ;


 int EAGAIN ;
 int MAX_TCS_SLOTS ;
 int RSC_DRV_CMD_ENABLE ;
 int RSC_DRV_CMD_WAIT_FOR_CMPL ;
 scalar_t__ bitmap_empty (int ,int ) ;
 int bitmap_zero (int ,int ) ;
 struct tcs_group* get_tcs_of_type (struct rsc_drv*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tcs_is_free (struct rsc_drv*,int) ;
 int write_tcs_reg_sync (struct rsc_drv*,int ,int,int ) ;

__attribute__((used)) static int tcs_invalidate(struct rsc_drv *drv, int type)
{
 int m;
 struct tcs_group *tcs;

 tcs = get_tcs_of_type(drv, type);

 spin_lock(&tcs->lock);
 if (bitmap_empty(tcs->slots, MAX_TCS_SLOTS)) {
  spin_unlock(&tcs->lock);
  return 0;
 }

 for (m = tcs->offset; m < tcs->offset + tcs->num_tcs; m++) {
  if (!tcs_is_free(drv, m)) {
   spin_unlock(&tcs->lock);
   return -EAGAIN;
  }
  write_tcs_reg_sync(drv, RSC_DRV_CMD_ENABLE, m, 0);
  write_tcs_reg_sync(drv, RSC_DRV_CMD_WAIT_FOR_CMPL, m, 0);
 }
 bitmap_zero(tcs->slots, MAX_TCS_SLOTS);
 spin_unlock(&tcs->lock);

 return 0;
}
