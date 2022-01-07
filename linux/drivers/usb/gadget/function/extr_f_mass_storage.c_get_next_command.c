
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_common {int fsg; struct fsg_buffhd* next_buffhd_to_fill; } ;
struct fsg_buffhd {int state; } ;


 int BUF_STATE_EMPTY ;
 int EIO ;
 int US_BULK_CB_WRAP_LEN ;
 scalar_t__ fsg_is_set (struct fsg_common*) ;
 int received_cbw (int ,struct fsg_buffhd*) ;
 int set_bulk_out_req_length (struct fsg_common*,struct fsg_buffhd*,int ) ;
 int sleep_thread (struct fsg_common*,int,struct fsg_buffhd*) ;
 int start_out_transfer (struct fsg_common*,struct fsg_buffhd*) ;

__attribute__((used)) static int get_next_command(struct fsg_common *common)
{
 struct fsg_buffhd *bh;
 int rc = 0;


 bh = common->next_buffhd_to_fill;
 rc = sleep_thread(common, 1, bh);
 if (rc)
  return rc;


 set_bulk_out_req_length(common, bh, US_BULK_CB_WRAP_LEN);
 if (!start_out_transfer(common, bh))

  return -EIO;
 rc = sleep_thread(common, 1, bh);
 if (rc)
  return rc;

 rc = fsg_is_set(common) ? received_cbw(common->fsg, bh) : -EIO;
 bh->state = BUF_STATE_EMPTY;

 return rc;
}
