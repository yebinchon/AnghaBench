
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {int is_enabled; } ;


 int DISPC_CONFIG ;
 scalar_t__ OMAP_DSS_LOAD_FRAME_ONLY ;
 scalar_t__ REG_GET (int ,int,int) ;
 int _omap_dispc_initial_config () ;
 TYPE_1__ dispc ;
 int dispc_restore_context () ;
 int smp_wmb () ;

__attribute__((used)) static int dispc_runtime_resume(struct device *dev)
{






 if (REG_GET(DISPC_CONFIG, 2, 1) != OMAP_DSS_LOAD_FRAME_ONLY) {
  _omap_dispc_initial_config();

  dispc_restore_context();
 }

 dispc.is_enabled = 1;

 smp_wmb();

 return 0;
}
