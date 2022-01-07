
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {int gcr_lock; scalar_t__ gcr_mem_base; } ;


 TYPE_1__ ipcdev ;
 int is_gcr_valid (scalar_t__) ;
 int readq (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int intel_pmc_gcr_read64(u32 offset, u64 *data)
{
 int ret;

 spin_lock(&ipcdev.gcr_lock);

 ret = is_gcr_valid(offset);
 if (ret < 0) {
  spin_unlock(&ipcdev.gcr_lock);
  return ret;
 }

 *data = readq(ipcdev.gcr_mem_base + offset);

 spin_unlock(&ipcdev.gcr_lock);

 return 0;
}
