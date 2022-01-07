
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct esas2r_disc_context {int disc_evt; } ;
struct esas2r_adapter {int flags; struct esas2r_disc_context disc_ctx; } ;


 int AF_CHPRST_PENDING ;
 int AF_DISC_POLLED ;
 int esas2r_disc_start_port (struct esas2r_adapter*) ;
 int esas2r_trace (char*,int ) ;
 int esas2r_trace_enter () ;
 int esas2r_trace_exit () ;
 int test_bit (int ,int *) ;

void esas2r_disc_queue_event(struct esas2r_adapter *a, u8 disc_evt)
{
 struct esas2r_disc_context *dc = &a->disc_ctx;

 esas2r_trace_enter();

 esas2r_trace("disc_event: %d", disc_evt);


 dc->disc_evt |= disc_evt;





 if (!test_bit(AF_CHPRST_PENDING, &a->flags) &&
     !test_bit(AF_DISC_POLLED, &a->flags))
  esas2r_disc_start_port(a);

 esas2r_trace_exit();
}
