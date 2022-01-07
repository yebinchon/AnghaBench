
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* otg; } ;
struct isp1301 {TYPE_2__ phy; } ;
struct TYPE_3__ {int state; } ;


 char const* usb_otg_state_string (int ) ;

__attribute__((used)) static inline const char *state_name(struct isp1301 *isp)
{
 return usb_otg_state_string(isp->phy.otg->state);
}
