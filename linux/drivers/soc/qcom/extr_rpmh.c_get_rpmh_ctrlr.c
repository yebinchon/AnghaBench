
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmh_ctrlr {int dummy; } ;
struct rsc_drv {struct rpmh_ctrlr client; } ;
struct device {int parent; } ;


 struct rsc_drv* dev_get_drvdata (int ) ;

__attribute__((used)) static struct rpmh_ctrlr *get_rpmh_ctrlr(const struct device *dev)
{
 struct rsc_drv *drv = dev_get_drvdata(dev->parent);

 return &drv->client;
}
