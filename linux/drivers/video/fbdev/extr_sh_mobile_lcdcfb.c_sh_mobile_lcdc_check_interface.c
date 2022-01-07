
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_mobile_lcdc_chan {int ldmt1r_value; TYPE_1__* cfg; } ;
struct TYPE_2__ {int interface_type; } ;


 int EINVAL ;
 int LDMT1R_IFM ;
 scalar_t__ lcdc_chan_is_sublcd (struct sh_mobile_lcdc_chan*) ;

__attribute__((used)) static int sh_mobile_lcdc_check_interface(struct sh_mobile_lcdc_chan *ch)
{
 int interface_type = ch->cfg->interface_type;

 switch (interface_type) {
 case 140:
 case 139:
 case 145:
 case 144:
 case 143:
 case 142:
 case 141:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
 case 138:
 case 137:
 case 136:
 case 135:
 case 134:
 case 133:
  break;
 default:
  return -EINVAL;
 }


 if (lcdc_chan_is_sublcd(ch)) {
  if (!(interface_type & LDMT1R_IFM))
   return -EINVAL;

  interface_type &= ~LDMT1R_IFM;
 }

 ch->ldmt1r_value = interface_type;
 return 0;
}
