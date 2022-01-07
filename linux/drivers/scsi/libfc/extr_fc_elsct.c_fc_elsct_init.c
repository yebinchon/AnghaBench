
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ elsct_send; } ;
struct fc_lport {TYPE_1__ tt; } ;


 scalar_t__ fc_elsct_send ;

int fc_elsct_init(struct fc_lport *lport)
{
 if (!lport->tt.elsct_send)
  lport->tt.elsct_send = fc_elsct_send;

 return 0;
}
