
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_dev {scalar_t__ msi_enabled; } ;


 int AAC_ENABLE_INTX ;
 int aac_src_access_devreg (struct aac_dev*,int ) ;
 int msleep (int) ;

void aac_set_intx_mode(struct aac_dev *dev)
{
 if (dev->msi_enabled) {
  aac_src_access_devreg(dev, AAC_ENABLE_INTX);
  dev->msi_enabled = 0;
  msleep(5000);
 }
}
