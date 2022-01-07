
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int hwlock; int socinfo; } ;


 TYPE_1__* __smem ;
 int hwspin_lock_free (int ) ;
 int platform_device_unregister (int ) ;

__attribute__((used)) static int qcom_smem_remove(struct platform_device *pdev)
{
 platform_device_unregister(__smem->socinfo);

 hwspin_lock_free(__smem->hwlock);
 __smem = ((void*)0);

 return 0;
}
