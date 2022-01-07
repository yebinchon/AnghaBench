
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdns3_device {int ** eps; int dev; } ;


 int CDNS3_ENDPOINTS_MAX_COUNT ;
 int cdns3_free_trb_pool (int *) ;
 int devm_kfree (int ,int *) ;

__attribute__((used)) static void cdns3_free_all_eps(struct cdns3_device *priv_dev)
{
 int i;


 priv_dev->eps[16] = ((void*)0);

 for (i = 0; i < CDNS3_ENDPOINTS_MAX_COUNT; i++)
  if (priv_dev->eps[i]) {
   cdns3_free_trb_pool(priv_dev->eps[i]);
   devm_kfree(priv_dev->dev, priv_dev->eps[i]);
  }
}
