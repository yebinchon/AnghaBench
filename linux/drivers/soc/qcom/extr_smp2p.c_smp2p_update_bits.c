
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smp2p_entry {int smp2p; int lock; int value; } ;


 int qcom_smp2p_kick (int ) ;
 int readl (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel (int ,int ) ;

__attribute__((used)) static int smp2p_update_bits(void *data, u32 mask, u32 value)
{
 struct smp2p_entry *entry = data;
 u32 orig;
 u32 val;

 spin_lock(&entry->lock);
 val = orig = readl(entry->value);
 val &= ~mask;
 val |= value;
 writel(val, entry->value);
 spin_unlock(&entry->lock);

 if (val != orig)
  qcom_smp2p_kick(entry->smp2p);

 return 0;
}
