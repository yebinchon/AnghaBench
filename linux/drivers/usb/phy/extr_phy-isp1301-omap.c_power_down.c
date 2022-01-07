
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* otg; } ;
struct isp1301 {TYPE_2__ phy; } ;
struct TYPE_3__ {int state; } ;


 int ISP1301_MODE_CONTROL_1 ;
 int ISP1301_OTG_CONTROL_1 ;
 int MC1_DAT_SE0 ;
 int MC1_SUSPEND ;
 int OTG1_ID_PULLDOWN ;
 int OTG_STATE_UNDEFINED ;
 int isp1301_clear_bits (struct isp1301*,int ,int ) ;
 int isp1301_set_bits (struct isp1301*,int ,int ) ;

__attribute__((used)) static void power_down(struct isp1301 *isp)
{
 isp->phy.otg->state = OTG_STATE_UNDEFINED;


 isp1301_set_bits(isp, ISP1301_MODE_CONTROL_1, MC1_SUSPEND);

 isp1301_clear_bits(isp, ISP1301_OTG_CONTROL_1, OTG1_ID_PULLDOWN);
 isp1301_clear_bits(isp, ISP1301_MODE_CONTROL_1, MC1_DAT_SE0);
}
