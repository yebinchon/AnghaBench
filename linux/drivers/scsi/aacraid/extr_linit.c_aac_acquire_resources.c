
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct aac_dev {int max_msix; TYPE_2__* init; int sync_mode; scalar_t__ msi_enabled; } ;
struct TYPE_6__ {int OMR; } ;
struct TYPE_4__ {int no_of_msix_vectors; } ;
struct TYPE_5__ {TYPE_1__ r7; } ;


 int AAC_ENABLE_MSIX ;
 unsigned long KERNEL_UP_AND_RUNNING ;
 TYPE_3__ MUnit ;
 scalar_t__ aac_acquire_irq (struct aac_dev*) ;
 int aac_adapter_disable_int (struct aac_dev*) ;
 int aac_adapter_enable_int (struct aac_dev*) ;
 int aac_adapter_start (struct aac_dev*) ;
 int aac_define_int_mode (struct aac_dev*) ;
 int aac_fib_vector_assign (struct aac_dev*) ;
 scalar_t__ aac_is_src (struct aac_dev*) ;
 int aac_src_access_devreg (struct aac_dev*,int ) ;
 int cpu_to_le32 (int ) ;
 int msleep (int) ;
 unsigned long src_readl (struct aac_dev*,int ) ;

__attribute__((used)) static int aac_acquire_resources(struct aac_dev *dev)
{
 unsigned long status;




 while (!((status = src_readl(dev, MUnit.OMR)) & KERNEL_UP_AND_RUNNING)
  || status == 0xffffffff)
   msleep(20);

 aac_adapter_disable_int(dev);
 aac_adapter_enable_int(dev);


 if (aac_is_src(dev))
  aac_define_int_mode(dev);

 if (dev->msi_enabled)
  aac_src_access_devreg(dev, AAC_ENABLE_MSIX);

 if (aac_acquire_irq(dev))
  goto error_iounmap;

 aac_adapter_enable_int(dev);




 aac_fib_vector_assign(dev);

 if (!dev->sync_mode) {



  dev->init->r7.no_of_msix_vectors = cpu_to_le32(dev->max_msix);
  aac_adapter_start(dev);
 }
 return 0;

error_iounmap:
 return -1;

}
