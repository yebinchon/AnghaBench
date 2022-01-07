
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lynx_accel {int dummy; } ;


 int DE_CONTROL ;
 unsigned int DE_CONTROL_TRANSPARENCY ;
 unsigned int DE_CONTROL_TRANSPARENCY_MATCH ;
 unsigned int DE_CONTROL_TRANSPARENCY_SELECT ;
 unsigned int read_dpr (struct lynx_accel*,int ) ;

__attribute__((used)) static unsigned int deGetTransparency(struct lynx_accel *accel)
{
 unsigned int de_ctrl;

 de_ctrl = read_dpr(accel, DE_CONTROL);

 de_ctrl &= (DE_CONTROL_TRANSPARENCY_MATCH |
      DE_CONTROL_TRANSPARENCY_SELECT | DE_CONTROL_TRANSPARENCY);

 return de_ctrl;
}
