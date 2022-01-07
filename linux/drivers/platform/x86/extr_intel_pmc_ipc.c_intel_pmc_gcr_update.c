
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int gcr_mem_base; int gcr_lock; } ;


 int EIO ;
 TYPE_1__ ipcdev ;
 int is_gcr_valid (int) ;
 int readl (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel (int,int) ;

int intel_pmc_gcr_update(u32 offset, u32 mask, u32 val)
{
 u32 new_val;
 int ret = 0;

 spin_lock(&ipcdev.gcr_lock);

 ret = is_gcr_valid(offset);
 if (ret < 0)
  goto gcr_ipc_unlock;

 new_val = readl(ipcdev.gcr_mem_base + offset);

 new_val &= ~mask;
 new_val |= val & mask;

 writel(new_val, ipcdev.gcr_mem_base + offset);

 new_val = readl(ipcdev.gcr_mem_base + offset);


 if ((new_val & mask) != (val & mask)) {
  ret = -EIO;
  goto gcr_ipc_unlock;
 }

gcr_ipc_unlock:
 spin_unlock(&ipcdev.gcr_lock);
 return ret;
}
