
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_request {int * interrupt_cx; } ;
struct esas2r_disc_context {int flags; int state; } ;
struct esas2r_adapter {int flags; } ;


 int AF_DISC_IN_PROG ;
 int AF_DISC_PENDING ;
 int DCF_DEV_CHANGE ;
 int DCF_DEV_SCAN ;
 int clear_bit (int ,int *) ;
 int esas2r_bugon () ;
 int esas2r_disc_block_dev_scan (struct esas2r_adapter*,struct esas2r_request*) ;
 int esas2r_disc_dev_add (struct esas2r_adapter*,struct esas2r_request*) ;
 int esas2r_disc_dev_remove (struct esas2r_adapter*,struct esas2r_request*) ;
 int esas2r_disc_fix_curr_requests (struct esas2r_adapter*) ;
 int esas2r_disc_part_info (struct esas2r_adapter*,struct esas2r_request*) ;
 int esas2r_disc_passthru_dev_addr (struct esas2r_adapter*,struct esas2r_request*) ;
 int esas2r_disc_passthru_dev_info (struct esas2r_adapter*,struct esas2r_request*) ;
 int esas2r_disc_raid_grp_info (struct esas2r_adapter*,struct esas2r_request*) ;
 int esas2r_disc_start_port (struct esas2r_adapter*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static bool esas2r_disc_continue(struct esas2r_adapter *a,
     struct esas2r_request *rq)
{
 struct esas2r_disc_context *dc =
  (struct esas2r_disc_context *)rq->interrupt_cx;
 bool rslt;


 while (dc->flags & (DCF_DEV_CHANGE | DCF_DEV_SCAN)) {
  rslt = 0;

  switch (dc->state) {
  case 133:

   rslt = esas2r_disc_dev_remove(a, rq);
   break;

  case 134:

   rslt = esas2r_disc_dev_add(a, rq);
   break;

  case 135:

   rslt = esas2r_disc_block_dev_scan(a, rq);
   break;

  case 128:

   rslt = esas2r_disc_raid_grp_info(a, rq);
   break;

  case 131:

   rslt = esas2r_disc_part_info(a, rq);
   break;

  case 129:

   rslt = esas2r_disc_passthru_dev_info(a, rq);
   break;
  case 130:

   rslt = esas2r_disc_passthru_dev_addr(a, rq);
   break;
  case 132:

   dc->flags &= ~(DCF_DEV_CHANGE | DCF_DEV_SCAN);
   break;

  default:

   esas2r_bugon();
   dc->state = 132;
   break;
  }

  if (rslt)
   return 1;
 }


 rq->interrupt_cx = ((void*)0);

 if (!test_bit(AF_DISC_PENDING, &a->flags))
  esas2r_disc_fix_curr_requests(a);

 clear_bit(AF_DISC_IN_PROG, &a->flags);


 return esas2r_disc_start_port(a);
}
