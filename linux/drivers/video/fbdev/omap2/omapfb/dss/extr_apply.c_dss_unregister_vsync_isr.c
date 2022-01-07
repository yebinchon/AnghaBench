
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int irq_enabled; } ;


 int WARN_ON (int) ;
 int dispc_mgr_get_framedone_irq (int) ;
 int dispc_mgr_get_vsync_irq (int) ;
 int dss_apply_irq_handler ;
 TYPE_1__ dss_data ;
 int dss_feat_get_num_mgrs () ;
 int omap_dispc_unregister_isr (int ,int *,int ) ;

__attribute__((used)) static void dss_unregister_vsync_isr(void)
{
 const int num_mgrs = dss_feat_get_num_mgrs();
 u32 mask;
 int r, i;

 mask = 0;
 for (i = 0; i < num_mgrs; ++i)
  mask |= dispc_mgr_get_vsync_irq(i);

 for (i = 0; i < num_mgrs; ++i)
  mask |= dispc_mgr_get_framedone_irq(i);

 r = omap_dispc_unregister_isr(dss_apply_irq_handler, ((void*)0), mask);
 WARN_ON(r);

 dss_data.irq_enabled = 0;
}
