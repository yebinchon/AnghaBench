
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fsg_common {int data_dir; TYPE_2__* fsg; int can_stall; int short_packet_received; int residue; struct fsg_buffhd* next_buffhd_to_fill; int data_size; } ;
struct fsg_buffhd {struct fsg_buffhd* next; TYPE_1__* inreq; } ;
struct TYPE_5__ {int bulk_out; } ;
struct TYPE_4__ {int zero; } ;






 int EINTR ;
 int EIO ;
 int FSG_STATE_ABORT_BULK_OUT ;
 int fsg_is_set (struct fsg_common*) ;
 int fsg_set_halt (TYPE_2__*,int ) ;
 int halt_bulk_in_endpoint (TYPE_2__*) ;
 int raise_exception (struct fsg_common*,int ) ;
 int start_in_transfer (struct fsg_common*,struct fsg_buffhd*) ;
 int throw_away_data (struct fsg_common*) ;

__attribute__((used)) static int finish_reply(struct fsg_common *common)
{
 struct fsg_buffhd *bh = common->next_buffhd_to_fill;
 int rc = 0;

 switch (common->data_dir) {
 case 130:
  break;







 case 128:
  if (!common->can_stall) {

  } else if (fsg_is_set(common)) {
   fsg_set_halt(common->fsg, common->fsg->bulk_out);
   rc = halt_bulk_in_endpoint(common->fsg);
  } else {

   rc = -EIO;
  }
  break;


 case 129:
  if (common->data_size == 0) {



  } else if (!fsg_is_set(common)) {
   rc = -EIO;


  } else if (common->residue == 0) {
   bh->inreq->zero = 0;
   if (!start_in_transfer(common, bh))
    return -EIO;
   common->next_buffhd_to_fill = bh->next;
  } else {
   bh->inreq->zero = 1;
   if (!start_in_transfer(common, bh))
    rc = -EIO;
   common->next_buffhd_to_fill = bh->next;
   if (common->can_stall)
    rc = halt_bulk_in_endpoint(common->fsg);
  }
  break;





 case 131:
  if (common->residue == 0) {



  } else if (common->short_packet_received) {
   raise_exception(common, FSG_STATE_ABORT_BULK_OUT);
   rc = -EINTR;
  } else {
   rc = throw_away_data(common);
  }
  break;
 }
 return rc;
}
