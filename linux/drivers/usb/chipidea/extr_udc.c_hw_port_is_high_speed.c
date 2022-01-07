
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ lpm; } ;
struct ci_hdrc {TYPE_1__ hw_bank; } ;


 int DEVLC_PSPD ;
 int OP_DEVLC ;
 int OP_PORTSC ;
 int PORTSC_HSP ;
 int hw_read (struct ci_hdrc*,int ,int ) ;

__attribute__((used)) static int hw_port_is_high_speed(struct ci_hdrc *ci)
{
 return ci->hw_bank.lpm ? hw_read(ci, OP_DEVLC, DEVLC_PSPD) :
  hw_read(ci, OP_PORTSC, PORTSC_HSP);
}
