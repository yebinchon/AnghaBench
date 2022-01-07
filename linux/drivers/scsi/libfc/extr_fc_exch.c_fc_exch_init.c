
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ exch_mgr_reset; } ;
struct fc_lport {TYPE_1__ tt; } ;


 scalar_t__ fc_exch_mgr_reset ;

int fc_exch_init(struct fc_lport *lport)
{
 if (!lport->tt.exch_mgr_reset)
  lport->tt.exch_mgr_reset = fc_exch_mgr_reset;

 return 0;
}
