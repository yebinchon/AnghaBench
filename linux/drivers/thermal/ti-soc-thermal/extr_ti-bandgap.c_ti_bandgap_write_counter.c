
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_bandgap {int clk_rate; int lock; } ;


 int RMW_BITS (struct ti_bandgap*,int,int ,int ,int) ;
 int bgap_counter ;
 int counter_mask ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ti_bandgap_write_counter(struct ti_bandgap *bgp, int id,
         u32 interval)
{
 interval = interval * bgp->clk_rate / 1000;
 spin_lock(&bgp->lock);
 RMW_BITS(bgp, id, bgap_counter, counter_mask, interval);
 spin_unlock(&bgp->lock);
}
