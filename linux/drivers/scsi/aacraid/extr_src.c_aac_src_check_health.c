
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct aac_dev {int dummy; } ;
struct TYPE_2__ {int OMR; } ;


 int KERNEL_PANIC ;
 int KERNEL_UP_AND_RUNNING ;
 int MONITOR_PANIC ;
 TYPE_1__ MUnit ;
 int SELF_TEST_FAILED ;
 int src_readl (struct aac_dev*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int aac_src_check_health(struct aac_dev *dev)
{
 u32 status = src_readl(dev, MUnit.OMR);




 if (unlikely(status & KERNEL_PANIC))
  goto err_blink;




 if (unlikely(status & SELF_TEST_FAILED))
  goto err_out;




 if (unlikely(status & MONITOR_PANIC))
  goto err_out;




 if (unlikely(!(status & KERNEL_UP_AND_RUNNING)))
  return -3;



 return 0;

err_out:
 return -1;

err_blink:
 return (status >> 16) & 0xFF;
}
