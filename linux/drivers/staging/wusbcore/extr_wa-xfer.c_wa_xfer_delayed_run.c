
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wa_rpipe {int wa; } ;


 int __wa_xfer_delayed_run (struct wa_rpipe*,int*) ;
 int wa_add_delayed_rpipe (int ,struct wa_rpipe*) ;
 int wa_check_for_delayed_rpipes (int ) ;

__attribute__((used)) static void wa_xfer_delayed_run(struct wa_rpipe *rpipe)
{
 int dto_waiting;
 int dto_done = __wa_xfer_delayed_run(rpipe, &dto_waiting);
 if (dto_waiting)
  wa_add_delayed_rpipe(rpipe->wa, rpipe);
 else if (dto_done)
  wa_check_for_delayed_rpipes(rpipe->wa);
}
