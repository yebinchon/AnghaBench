
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mode; int clock_speed; } ;
struct slgt_info {TYPE_1__ params; } ;


 int BIT2 ;
 int CCR ;
 scalar_t__ MGSL_MODE_ASYNC ;
 int SCR ;
 int rd_reg16 (struct slgt_info*,int ) ;
 int set_rate (struct slgt_info*,int) ;
 int wr_reg16 (struct slgt_info*,int ,unsigned short) ;
 int wr_reg8 (struct slgt_info*,int ,int) ;

__attribute__((used)) static void enable_loopback(struct slgt_info *info)
{

 wr_reg16(info, SCR, (unsigned short)(rd_reg16(info, SCR) | BIT2));

 if (info->params.mode != MGSL_MODE_ASYNC) {
  wr_reg8(info, CCR, 0x49);


  if (info->params.clock_speed)
   set_rate(info, info->params.clock_speed);
  else
   set_rate(info, 3686400);
 }
}
