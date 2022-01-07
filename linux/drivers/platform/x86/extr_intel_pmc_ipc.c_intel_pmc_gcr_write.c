
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int gcr_lock; scalar_t__ gcr_mem_base; } ;


 TYPE_1__ ipcdev ;
 int is_gcr_valid (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel (scalar_t__,scalar_t__) ;

int intel_pmc_gcr_write(u32 offset, u32 data)
{
 int ret;

 spin_lock(&ipcdev.gcr_lock);

 ret = is_gcr_valid(offset);
 if (ret < 0) {
  spin_unlock(&ipcdev.gcr_lock);
  return ret;
 }

 writel(data, ipcdev.gcr_mem_base + offset);

 spin_unlock(&ipcdev.gcr_lock);

 return 0;
}
