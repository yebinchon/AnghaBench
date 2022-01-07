
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmh_ctrlr {int dirty; } ;
struct device {int dummy; } ;


 int EAGAIN ;
 int ctrlr_to_drv (struct rpmh_ctrlr*) ;
 struct rpmh_ctrlr* get_rpmh_ctrlr (struct device const*) ;
 int invalidate_batch (struct rpmh_ctrlr*) ;
 int rpmh_rsc_invalidate (int ) ;

int rpmh_invalidate(const struct device *dev)
{
 struct rpmh_ctrlr *ctrlr = get_rpmh_ctrlr(dev);
 int ret;

 invalidate_batch(ctrlr);
 ctrlr->dirty = 1;

 do {
  ret = rpmh_rsc_invalidate(ctrlr_to_drv(ctrlr));
 } while (ret == -EAGAIN);

 return ret;
}
